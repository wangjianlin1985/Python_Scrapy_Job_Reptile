from django.contrib import admin
from app01.models import partJobInfo,City
admin.site.site_title = "基于Scrapy的上上兼职网的数据采集系统"
admin.site.site_header ="基于Scrapy的上上兼职网的数据采集系统"
admin.site.index_title="基于Scrapy的上上兼职网的数据采集系统"

class partJobInfoAdmin(admin.ModelAdmin):
    list_display = ('city', 'type_j','education','detail_url','jobName','readCount','salary','dateTime','companyName','desc','price',)
    search_fields = ('city', 'type_j','education','detail_url','jobName','readCount','salary','dateTime','companyName','desc','price',)
    list_display_links = None
admin.site.register(partJobInfo, partJobInfoAdmin)


class CityAdmin(admin.ModelAdmin):
    list_display = ('name', 'JobCount',)
    search_fields = ('name', 'JobCount',)
    list_display_links = None
admin.site.register(City, CityAdmin)


