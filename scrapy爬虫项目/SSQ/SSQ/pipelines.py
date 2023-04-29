# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html


# useful for handling different item types with a single interface
from itemadapter import ItemAdapter

from pymysql import OperationalError
import redis
import pymysql
import json


class SsqPipeline:
    def __init__(self):
        self.conn = pymysql.connect(
            host='localhost',
            port=3306,
            user='root',
            password='123456',
            #db='ibailian'
            db='jobas'
        )
        self.cursor = self.conn.cursor()
        self.object_redis = redis.Redis(host="localhost", port=6379, password='')
        #self.ssq_info = "insert into ssq(id,url,city,county,type_j,detail_url,招聘职位," \
        #                "浏览,工资待遇,更新时间,招聘单位,标签) value (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
        self.ssq_info = "insert into app01_partjobinfo(id,city,county,type_j, education,detail_url,jobName," \
                            "readCount,salary,dateTime,companyName,`desc`,price) values (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"

        self.ssq_info_list = []

    def process_item(self, item, spider):
        save_data = (
            0, item['city'],item['county'], item['type_j'], item['学历'],item['detail_url'],
            item['招聘职位'], item['浏览'], item['工资待遇'],
            item['更新时间'], item['招聘单位'], item['标签'],0.0
        )
        self.ssq_info_list.append(save_data)
        #print(save_data)
        #if len(self.ssq_info_list) == 50:
        if len(self.ssq_info_list) == 1:
            self.blank_insert_to_mysql(self.ssq_info, self.ssq_info_list, key='ssq_fail')
            del self.ssq_info_list[:]
        return item

    def blank_insert_to_mysql(self, sql, d_list, key):
        # 判断连接是否断开
        self.judge_mysql()
        try:
            self.cursor.executemany(sql, d_list)
            # print(f"{sql}插入成功")
            self.conn.commit()
        except Exception as e:
            # 重新插入一次
            print("重新插入数据 ===> ", sql, d_list)
            try:
                self.cursor.executemany(sql, d_list)
                self.conn.commit()
            except Exception as e:
                print(f'插入失败 回滚数据并保存到redis-->{key}中')
                print('失败的d_list=>：', d_list)
                print(e)
                self.object_redis.lpush(key, json.dumps(d_list))
                self.conn.rollback()

    # 判断数据库是否断开连接，若断开重新连接
    def judge_mysql(self):
        # 1.进行判断 mysql是否时间久了进行数据关闭，如若关闭 重新建立连接
        while True:
            try:
                self.conn.ping()
                break
            except OperationalError:
                print("mysql-----------断开连接，重新创建连接")
                self.conn.ping(True)

    def close_spider(self, spider):
        # # 最后执行没满足指定插入个数的数据
        self.blank_insert_to_mysql(self.ssq_info, self.ssq_info_list, key='ssq_fail')
        self.cursor.close()
        self.conn.close()
