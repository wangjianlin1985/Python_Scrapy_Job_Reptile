from django.db import models


class partJobInfo(models.Model):
    city = models.CharField(max_length=255, verbose_name="城市")
    county = models.CharField(verbose_name="分布范围", max_length=255)
    type_j = models.CharField(verbose_name="职位类型", max_length=255)  # 工作类别
    education = models.CharField(max_length=255, verbose_name="学历")
    detail_url = models.CharField(max_length=255, verbose_name="职位URL")
    jobName = models.CharField(max_length=255, verbose_name="职位名称")
    readCount = models.IntegerField(verbose_name="浏览量")
    salary = models.CharField(max_length=255, verbose_name="工资")
    price = models.FloatField( verbose_name='时薪', default='')
    dateTime = models.DateTimeField(verbose_name="发布时间")
    companyName = models.CharField(max_length=255, verbose_name="招聘单位")
    desc = models.TextField(verbose_name="描述信息")

    class Meta:
        verbose_name = "兼职信息"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.jobName


class City(models.Model):
    name = models.CharField(verbose_name="城市名称", max_length=255)
    JobCount = models.IntegerField(verbose_name="兼职数量")

    class Meta:
        verbose_name = "城市"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name
