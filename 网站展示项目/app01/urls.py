

from app01 import views
from django.urls import include, path
app_name = "app01"
urlpatterns = [
    path('', views.Index, name='index'),
    path('salary/', views.Salary, name='salary'),
    path('district/', views.District, name='district'),
    path('districtLine/', views.DistrictLine, name='districtLine'),
    path('education/', views.Education, name='education'),
    path('wordCloud/', views.WordCloudT, name='wordCloud'),
    path('demo/PositionNameView/',views.PositionNameView.as_view(), name='PositionNameView'),
    path('demo/SalaryView/',views.SalaryView.as_view(), name='SalaryView'),
    path('demo/EducationView/',views.EducationView.as_view(), name='EducationView'),
    path('demo/WordCloudView/',views.WordCloudView.as_view(), name='WordCloudView'),
    path('demo/DistrictView/',views.DistrictView.as_view(), name='DistrictView'),
    path('demo/DistrictLineView/',views.DistrictLineView.as_view(), name='DistrictLineView'),
    path('my-page/', views.my_page, name='my-page'),
]
