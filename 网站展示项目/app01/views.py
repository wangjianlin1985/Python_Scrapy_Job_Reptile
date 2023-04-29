import json
from random import randrange
from django.contrib.auth.decorators import login_required

from django.http import HttpResponse
from django.shortcuts import render
from rest_framework.views import APIView

from pyecharts.charts import Bar, Geo, WordCloud, Line
from pyecharts.charts import Pie
from pyecharts import options as opts
from pyecharts.faker import Faker
from app01.models import partJobInfo
from pyecharts.globals import ChartType
import re


# Create your views here.
def response_as_json(data):
    json_str = json.dumps(data)
    response = HttpResponse(
        json_str,
        content_type="application/json",
    )
    response["Access-Control-Allow-Origin"] = "*"
    return response


def json_response(data, code=200, *args, **kwargs):
    data = {
        "code": code,
        "msg": "success",
        "data": data,
    }
    return response_as_json(data)


def json_error(error_string="error", code=500, **kwargs):
    data = {
        "code": code,
        "msg": error_string,
        "data": {}
    }
    data.update(kwargs)
    return response_as_json(data)


JsonResponse = json_response
JsonError = json_error


def pie_position(start=100, end=150) -> Pie():
    ress = partJobInfo.objects.all()
    position_info_dic = {}
    for i in ress:
        if i.type_j in position_info_dic:
            position_info_dic[i.type_j] += 1
        else:
            position_info_dic[i.type_j] = 1
    try:
        position_pie = (

            Pie()
                .add(
                "",

                list(position_info_dic.items())
                ,
                center=["40%", "50%"],
            )
                .set_global_opts(
                title_opts=opts.TitleOpts(title="工作类别饼图"),
                legend_opts=opts.LegendOpts(type_="scroll", pos_left="80%", orient="vertical"),
            )
                .set_series_opts(label_opts=opts.LabelOpts(formatter="{b}: {c}"))
                .dump_options_with_quotes())
    except Exception as e:
        print(e)
        return
    return position_pie


def bar_salary() -> Bar():
    ress = partJobInfo.objects.all()
    salary_list = []
    salary_dic = {}
    for i in ress:
        if i.price and 5 <= i.price <= 200:
            if i.price in salary_dic:
                salary_dic[i.price] += 1
            else:
                salary_dic[i.price] = 1
    x = sorted(list(salary_dic.keys()))
    y = [salary_dic[i] for i in x]
    x = [str(i) for i in x]
    try:
        salary_bar = (
            Bar()
                .add_xaxis(x)
                .add_yaxis("元/小时", y, color=Faker.rand_color())
                .set_global_opts(
                title_opts=opts.TitleOpts(title="数量"),
                datazoom_opts=[opts.DataZoomOpts(), opts.DataZoomOpts(type_="inside")],
            )
                .dump_options_with_quotes()
        )
    except Exception as e:
        print(e)
        return
    return salary_bar


def education_Pie() -> Pie():
    ress = partJobInfo.objects.all()
    education_dic = {}
    for i in ress:
        if i.education in education_dic:
            education_dic[i.education] += 1
        else:
            education_dic[i.education] = 1
    c = (
        Pie()
            .add(
            "",

            list(education_dic.items())
            ,
            center=["40%", "50%"],
        )
            .set_global_opts(
            title_opts=opts.TitleOpts(title="学历验饼图"),
            legend_opts=opts.LegendOpts(type_="scroll", pos_left="80%", orient="vertical"),
        )
            .set_series_opts(label_opts=opts.LabelOpts(formatter="{b}: {c}"))
            .dump_options_with_quotes()
    )
    return c


# from pyecharts.datasets import register_url
from app01.models import City
from pyecharts.charts import Map


def district_Geo() -> Map():
    ress = City.objects.filter()
    city_dic = {}
    for i in ress:
        city_dic[i.name] = i.JobCount
    # print(city_dic)
    c = (
        Map()
            .add(

            "",
            [list(z) for z in zip(city_dic.keys(), city_dic.values())],
            "china-cities",

            label_opts=opts.LabelOpts(is_show=False),

        )
            .set_global_opts(
            title_opts=opts.TitleOpts(title="城市热力图"),
            visualmap_opts=opts.VisualMapOpts(min_=0, max_=max(city_dic.values())),

        )
            .dump_options_with_quotes()
    )

    return c


def district_Line() -> Line():
    ress = partJobInfo.objects.filter()
    dateTime_dic = {}
    for i in ress:
        if i.dateTime.year in dateTime_dic:
            dateTime_dic[i.dateTime.year] += 1
        else:
            dateTime_dic[i.dateTime.year] = +1
    x_data = [i for i in dateTime_dic.keys()]
    y_data = [dateTime_dic[i] for i in x_data]
    x_data = sorted(x_data)
    x_data = [str(i) for i in x_data]
    print(x_data)
    print(y_data)
    c = (
        Line()
            .set_global_opts(
            tooltip_opts=opts.TooltipOpts(is_show=False),
            xaxis_opts=opts.AxisOpts(type_="category"),
            yaxis_opts=opts.AxisOpts(
                type_="value",
                axistick_opts=opts.AxisTickOpts(is_show=True),
                splitline_opts=opts.SplitLineOpts(is_show=True),
            ),
        )
            .add_xaxis(xaxis_data=x_data)
            .add_yaxis(
            series_name="",
            y_axis=y_data,
            symbol="emptyCircle",
            is_symbol_show=True,
            is_smooth=True,
            label_opts=opts.LabelOpts(is_show=False),
        )
            .dump_options_with_quotes()
    )

    return c


from app01 import utils
import os

base_dir = os.path.dirname(os.path.abspath(__file__))


def word_cloud() -> WordCloud():
    json_path = os.path.join(base_dir, "wordCloud.json")
    with open(json_path, "r", encoding="utf8") as f:
        word = json.load(f)
    c = (
        WordCloud()
            .add(
            "",
            word,
            word_size_range=[20, 100],
            textstyle_opts=opts.TextStyleOpts(font_family="cursive"),
        )
            .set_global_opts(title_opts=opts.TitleOpts(title="WordCloud"))
            .dump_options_with_quotes()
    )
    return c


class PositionNameView(APIView):
    def get(self, request, *args, **kwargs):
        start = request.GET.get('start', 100)
        end = request.GET.get('end', 150)
        print(start)
        print(end)
        return JsonResponse(json.loads(pie_position(int(start), int(end))))


class SalaryView(APIView):
    def get(self, request, *args, **kwargs):
        return JsonResponse(json.loads(bar_salary()))


class EducationView(APIView):
    def get(self, request, *args, **kwargs):
        return JsonResponse(json.loads(education_Pie()))


class WordCloudView(APIView):
    def get(self, request, *args, **kwargs):
        return JsonResponse(json.loads(word_cloud()))


class DistrictView(APIView):
    def get(self, request, *args, **kwargs):
         return JsonResponse(json.loads(district_Geo()))
        #return JsonResponse(json.loads(district_Line()))

class DistrictLineView(APIView):
    def get(self, request, *args, **kwargs):
        #return JsonResponse(json.loads(district_Geo()))#本来是地图现在换成时间曲线
        return JsonResponse(json.loads(district_Line()))


@login_required
def District(request):
    context = {
        'current_user': {'user': request.user, 'is_login': request.user.is_authenticated},
        'IsSuccess': 'district'
    }
    return render(request, 'districtT.html', context=context)

@login_required
def DistrictLine(request):
    context = {
        'current_user': {'user': request.user, 'is_login': request.user.is_authenticated},
        'IsSuccess': 'districtLine'
    }
    return render(request, 'districtLine.html', context=context)


@login_required
def WordCloudT(request):
    context = {
        'IsSuccess': 'wordCloud',
        'current_user': {'user': request.user, 'is_login': request.user.is_authenticated},
    }
    return render(request, 'worldCloudT.html', context=context)


@login_required
def Salary(request):
    context = {
        'current_user': {'user': request.user, 'is_login': request.user.is_authenticated},
        'IsSuccess': 'salary'
    }
    return render(request, 'salaryT.html', context=context)


@login_required
def Index(request):
    context = {
        'current_user': {'user': request.user, 'is_login': request.user.is_authenticated},
        'IsSuccess': 'workType'
    }
    return render(request, 'indexT.html', context=context)


@login_required
def Education(request):
    context = {
        'current_user': {'user': request.user, 'is_login': request.user.is_authenticated},
        'IsSuccess': 'education'
    }
    return render(request, 'educationT.html', context=context)


@login_required
def my_page(request):
    context = {

        'current_user': {'user': request.user, 'is_login': request.user.is_authenticated},

    }
    return render(request, 'my_page.html', context)
