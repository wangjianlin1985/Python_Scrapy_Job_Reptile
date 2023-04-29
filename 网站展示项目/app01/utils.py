import re
from app01.models import partJobInfo

class DataProcessing(object):
    def __init__(self):
        self.conn = pymysql.connect(
            host='localhost',
            port=3306,
            user='root',
            password='123456',
            db='ibailian'
        )
        self.cursor = self.conn.cursor()

    # 读取数据
    def read_sql(self, sql_table):
        sql = f"""SELECT * FROM {sql_table}"""
        self.cursor.execute(sql)
        data_tuple = self.cursor.fetchall()
        for one_data in data_tuple:
            # 迭代器防止内存爆满
            yield one_data

    # 处理数据
    def process_data(self, data_decorator):
        for i in data_decorator:
            i_list = list(i)
            if "元/小时" in i[8]:
                hours = re.findall(r'\d+', i[8])
                if hours:
                    price = float(self.processing(hours))
                    i_list.append(round(price, 2))
                else:
                    price = i[8]
                    i_list.append(price)
            elif "元/天" in i[8]:
                day = re.findall(r'\d+', i[8])
                if day:
                    price = float(self.processing(day, 8))
                    i_list.append(round(price, 2))
                else:
                    price = i[8]
                    i_list.append(price)
            elif "元/月" in i[8]:
                month = re.findall(r'\d+', i[8])
                if month:
                    price = float(self.processing(month, 22*8))
                    i_list.append(round(price, 2))
                else:
                    price = i[8]
                    i_list.append(price)
            else:
                try:
                    other = re.findall(r'\d+', i[8])[0]
                    i_list.append(other)
                except Exception as e:
                    i_list.append(i[8])
            print(i_list)
            self.sava_sql(i_list)

    # 写入数据库 -> ssj_process 表
    def sava_sql(self, last_data):
        process_info = "insert into ssj_process(id,url,city,county,type_j,detail_url,招聘职位," \
                       "浏览,工资待遇,更新时间,招聘单位,标签,price) value (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"

        self.cursor.execute(process_info, last_data)
        self.conn.commit()

    #  i_data 传入的数据,num倍数权重(即转成每小时的倍数)
    def processing(self, i_data, num=1):
        price_min = int(min(i_data))
        price_max = int(max(i_data))
        result_price = (price_max + price_min) / 2 / num
        return result_price


if __name__ == '__main__':
    d = DataProcessing()
    data = d.read_sql('ssq')
    d.process_data(data)
