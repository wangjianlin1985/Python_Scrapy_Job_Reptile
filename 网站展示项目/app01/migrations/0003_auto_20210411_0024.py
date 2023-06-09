# Generated by Django 3.2 on 2021-04-10 16:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app01', '0002_auto_20210309_1744'),
    ]

    operations = [
        migrations.CreateModel(
            name='City',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255, verbose_name='城市名称')),
                ('JobCount', models.IntegerField(verbose_name='兼职数量')),
            ],
        ),
        migrations.CreateModel(
            name='partJobInfo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('city', models.CharField(max_length=255, verbose_name='城市')),
                ('county', models.CharField(max_length=255, verbose_name='分布范围')),
                ('type_j', models.CharField(max_length=255, verbose_name='职位类型')),
                ('education', models.CharField(max_length=255, verbose_name='学历')),
                ('detail_url', models.CharField(max_length=255, verbose_name='职位URL')),
                ('jobName', models.CharField(max_length=255, verbose_name='职位名称')),
                ('readCount', models.IntegerField(verbose_name='浏览量')),
                ('salary', models.CharField(max_length=255, verbose_name='工资')),
                ('dateTime', models.DateTimeField(verbose_name='发布时间')),
                ('companyName', models.CharField(max_length=255, verbose_name='招聘单位')),
                ('ageMin', models.IntegerField(verbose_name='最大年龄')),
                ('ageMax', models.IntegerField(verbose_name='最小年龄')),
                ('desc', models.TextField()),
            ],
        ),
        migrations.AlterField(
            model_name='job_info',
            name='companyDesc',
            field=models.TextField(verbose_name='公司描述'),
        ),
        migrations.AlterField(
            model_name='job_info',
            name='companyType',
            field=models.CharField(max_length=255, verbose_name='公司类型'),
        ),
        migrations.AlterField(
            model_name='job_info',
            name='contact',
            field=models.CharField(max_length=255, verbose_name='联系方式'),
        ),
        migrations.AlterField(
            model_name='job_info',
            name='district',
            field=models.CharField(max_length=255, verbose_name='城市区域'),
        ),
        migrations.AlterField(
            model_name='job_info',
            name='positionDesc',
            field=models.TextField(verbose_name='职位描述'),
        ),
        migrations.AlterField(
            model_name='job_info',
            name='positionUrl',
            field=models.CharField(max_length=255, verbose_name='职位URL'),
        ),
    ]
