import os
import django
import json
from django.utils import timezone
import pandas as pd
base_dir = os.path.dirname(os.path.abspath(__file__))


def initJson():
    json_path = '/Volumes/Passport/ssq.json'
    jobInfo = {}
    # df_JobInfo = pd.read_json(json_path)
    with open(json_path, 'r', encoding="utf8")as f:
        jobInfo = json.load(f)
    cityList = ["北京",
                "上海",
                "广州",
                "深圳",
                "武汉",
                "南京",
                "天津",
                "杭州",
                "哈尔滨"]
    print(type(jobInfo))
    JobInfoList = jobInfo["RECORDS"]
    newJobInfoList = []
    for jobDict in JobInfoList:
        if jobDict["city"] in cityList:
            print(jobDict["id"])
            newJobInfoList.append(jobDict)
    print(len(newJobInfoList))
    with open("app01/new.json",
              "w", encoding="utf8") as f:
        f.write(json.dumps(newJobInfoList, ensure_ascii=False))


from datetime import datetime


def parse_ymdhms(s):
    date, time = s.split(' ')
    year_s, mon_s, day_s = date.split("-")
    hour, minute, second = time.split(":")
    tz = timezone.get_current_timezone()
    new_datetime = datetime(int(year_s), int(mon_s), int(day_s), hour=int(hour), minute=int(minute),
                            second=int(float(second)))
    timzone_datetime = timezone.make_aware(new_datetime, tz, True)
    return timzone_datetime


def tags(tag):
    tagList = eval(tag)
    return "".join(tagList)


os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'JobAs.settings')
django.setup()
from app01.models import partJobInfo, City

JobInfoList = []
json_path = os.path.join(base_dir, "app01", "new.json")
df_JobInfo = pd.read_json(json_path)
# with open(json_path, 'r', encoding="utf8")as f:
#     JobInfoList = json.load(f)
def initsql():
    for i in range(int(df_JobInfo.county.count())):
        a = partJobInfo(
                city=df_JobInfo["city"][i],
            county=df_JobInfo["county"][i],
            type_j=df_JobInfo["type_j"][i],
            detail_url=df_JobInfo["detail_url"][i],
            jobName=df_JobInfo["招聘职位"][i],
            readCount=int(df_JobInfo["浏览"][i]),
            salary=df_JobInfo["工资待遇"][i],
            dateTime=parse_ymdhms(df_JobInfo["更新时间"][i]),
            companyName=df_JobInfo["招聘单位"][i],
            desc=tags(df_JobInfo["标签"][i]),
            price=PriceProcess(df_JobInfo["工资待遇"][i]).update_salary()
            )
        try:
            a.save()
        except Exception as e:
            print(e)
        del a




def education():
    no = 0
    chuzhong = 0
    gaozhong = 0
    dazhuan = 0
    benke = 0
    yanjiusheng = 0
    boshi = 0
    zhongzhuan = 0
    xuesheng = 0
    other = 0
    for job in JobInfoList:
        desc = tags(job["标签"])
        if "学历不限" in desc:
            no += 1
        elif "初中" in desc:
            chuzhong += 1
        elif "高中" in desc:
            gaozhong += 1
        elif "大专" in desc:
            dazhuan += 1
        elif "本科" in desc:
            benke += 1
        elif "研究生" in desc:
            yanjiusheng += 1
        elif "博士" in desc:
            boshi += 1
        elif "学生" in desc:
            xuesheng += 1
        elif "中专" in desc:
            zhongzhuan += 1
        else:
            other += 1
    print(
        f'学生:{xuesheng}\n学历不限:{no}\n初中:{chuzhong}\n中专:{zhongzhuan}\n高中:{gaozhong}\n大专:{dazhuan}\n本科:{benke}\n研究生:{yanjiusheng}\n博士:{boshi}\n其他:{other}')

def update_education():
    result = partJobInfo.objects.all()
    for i in result:
        desc = i.desc
        no = True
        i.education = ""
        if "初中" in desc:
            i.education += "初中"
            no = False
        if "高中" in desc:
            i.education += "高中"
            no = False
        if "大专" in desc:
            i.education += "大专"
            no = False
        if "本科" in desc:
            i.education += "本科"
            no = False
        if "研究生" in desc:
            i.education += "研究生"
            no = False
        if "博士" in desc:
            i.education += "博士"
            no = False
        if "学生" in desc:
            i.education += "学生"
            no = False
        if "中专" in desc:
            i.education += "中专"
            no = False
        if "学历不限" in desc:
            i.education += "学历不限"
            no = False
        if no:
            i.education += "学历不限"
        i.save()
        print(i.education)
def updateMinieducation():
    result = partJobInfo.objects.all()
    for i in result:
        desc = i.education
        no = True
        if "学历不限" in desc:
            i.education = "学历不限"
            no = False
        elif "初中" in desc:
            i.education = "初中"
            no = False
        elif "高中" in desc:
            i.education = "高中"
            no = False
        elif "中专" in desc:
            i.education = "中专"
            no = False
        elif "学生" in desc:
            i.education = "学生"
            no = False
        elif "大专" in desc:
            i.education = "大专"
            no = False
        elif "本科" in desc:
            i.education = "本科"
            no = False
        elif "研究生" in desc:
            i.education = "研究生"
            no = False
        elif "博士" in desc:
            i.education = "博士"
            no = False
        if no:
            i.education = "学历不限"
        i.save()
        print(i.education)

def update_salary():
    result = partJobInfo.objects.all()
    for i in result:
        try:
            s = i.salary
            if "面议" in i.salary or "面谈" in i.salary or "暂无" in i.salary or "---元/小时" in i.salary  or "五险一金元/小时" in i.salary:
                #i.salary = str(0)
                i.price = str(0)
            elif i.salary.endswith("元/小时") and "天" not in i.salary:
                salary = i.salary.replace("元", "").replace("小时","").replace("/","").replace("左右","").replace("+","").split("-")[0]
                #i.salary = str(int(salary))
                i.price = str(int(salary))
            elif i.salary.endswith("/小时/小时"):
                salary = i.salary
                salary = salary.replace("/", "")\
                    .replace("元","")\
                .replace("小时","")\
                .split("-")[0]
                #i.salary = str(int(salary))
                i.price = str(int(salary))
            elif i.salary.endswith("元/天") or "天" in i.salary:
                salary = i.salary.replace("元/天","")\
                    .replace("元","")\
                .replace("小时","")\
                .replace("/","")\
                .replace("一","")\
                .replace("天","")\
                .replace("~","-")\
                .replace("至","-")\
                .replace("百","100")\
                .replace("最少","")\
                .replace("每","")\
                .replace("以上","")\
                .replace("|","")\
                .replace("，","")\
                    .split("-")[0]
                #i.salary = str(int(int(salary)/8))
                i.price = str(int(int(salary) / 8)) #一天8小时上班制
            elif i.salary.endswith("元/月"):
                salary = i.salary.replace("元/月","")\
                    .replace("加提成","")\
                    .replace("+","")\
                    .replace("以上","")\
                    .split("-")[0]
                if "k" in salary:
                    salary = salary.replace("k","000")
                #i.salary = str(int(int(salary)/22/8)) #一个月22天上班每天8小时上班制
                i.price = str(int(int(salary) / 22 / 8))  # 一个月22天上班每天8小时上班制
            else:
                #i.salary=str(0)
                i.price = str(0)
            i.save()
        except Exception as e:
            print(e)
            print(s)
            i.delete()
import re


class PriceProcess:
    def __init__(self,salary=None):
        self.result = partJobInfo.objects.all()
        self.salary = salary
        self.price=None

    def update_salary(self):
        if self.salary is None:
            for i in self.result:
                if "元/小时" in i.salary:
                    hours = re.findall(r'\d+', i.salary)
                    if hours:
                        i.price = float(self.processing(hours))
                        i.save()
                    else:
                        pass
                elif "元/天" in i.salary:
                    day = re.findall(r'\d+', i.salary)
                    if day:
                        price = float(self.processing(day, 8))
                        i.price = round(price, 2)
                        i.save()

                elif "元/月" in i.salary:
                    month = re.findall(r'\d+', i.salary)
                    if month:
                        price = float(self.processing(month, 22 * 8))
                        i.price = round(price, 2)
                        i.save()
                    else:
                        pass
                else:
                    try:
                        i.price = re.findall(r'\d+', i.salary)[0]
                        i.save()
                    except Exception as e:
                        pass
        else:
            if "元/小时" in self.salary:
                hours = re.findall(r'\d+', self.salary)
                if hours:
                    self.price = float(self.processing(hours))
                else:
                    pass
            elif "元/天" in self.salary:
                day = re.findall(r'\d+', self.salary)
                if day:
                    price = float(self.processing(day, 8))
                    self.price = round(price, 2)
            elif "元/月" in self.salary:
                month = re.findall(r'\d+', self.salary)
                if month:
                    price = float(self.processing(month, 22 * 8))
                    self.price = round(price, 2)
                else:
                    pass
            else:
                try:
                    self.price = re.findall(r'\d+', self.salary)[0]
                except Exception as e:
                    pass
            return self.price

    def processing(self, i_data, num=1):
        price_min = int(min(i_data))
        price_max = int(max(i_data))
        result_price = (price_max + price_min) / 2 / num
        return result_price


def worldCloudmy():
    import jieba
    from sklearn.feature_extraction.text import CountVectorizer
    ress = partJobInfo.objects.all()#filter(~Q(positionDesc='desc'))
    content = ''
    for s in ress:
        content += s.desc
    comment_after_split = jieba.cut(str(content), cut_all=False)
    wl_space_split = " ".join(comment_after_split)
    cv = CountVectorizer()
    words = []
    contents_count = cv.fit_transform([wl_space_split])
    # 词有哪些
    list1 = cv.get_feature_names()
    # 词的频率
    list2 = contents_count.toarray().tolist()[0]
    contents_dict = dict(zip(list1, list2))
    for key, value in contents_dict.items():
        words.append((key, value))
    json_path = os.path.join(base_dir,"app01","wordCloud.json")
    with open(json_path,"w", encoding="utf8") as f:
        f.write(json.dumps(words, ensure_ascii=False))

def initCity():
    json_path = '/Volumes/Passport/ssq.json'
    jobInfo = {}
    with open(json_path, 'r', encoding="utf8")as f:
        jobInfo = json.load(f)
    JobInfoList = jobInfo["RECORDS"]
    cityDict = {}
    for jobDict in JobInfoList:
        if jobDict["city"] in cityDict:
            cityDict[jobDict["city"]]+=1
        else:
            cityDict[jobDict["city"]]=1
    print(cityDict)
    for Cityname in cityDict:
        c = City(name=Cityname,JobCount=cityDict[Cityname])
        c.save()

def city_job_count():
    cityList = City.objects.all()
    for city in cityList:
        city.delete()

    city_hit_list = ["北京", "上海", "广州", "深圳", "武汉", "南京", "天津", "杭州", "哈尔滨"]
    cityDict = {}
    jobs = partJobInfo.objects.all()
    for job in jobs:
        if job.city in cityDict:
            cityDict[job.city] += 1
        else:
            cityDict[job.city] = 1

    for Cityname in cityDict:
        c = City(name=Cityname, JobCount=cityDict[Cityname])
        c.save()





if __name__ == '__main__':
    #initsql()
    update_education() # 分析更新岗位需要的学历
    update_salary() # 分析计算岗位的小时工资
    #updateMinieducation()
    worldCloudmy()  #更加工作内容生成词云
    city_job_count()  # 分析统计城市岗位数量
    #a = PriceProcess()
    #a.update_salary()
    pass
    # ress = partJobInfo.objects.all()
    # for i in ress:
    #     i.price=0
    #     i.save()
        # if i.price:
        #     print(i.price)