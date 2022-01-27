from os import name
from django.contrib import admin
from django.urls import path
from . import views
from .views import *

urlpatterns = [
    # path('',views.login_screen,name='login'),
    
    path('home',views.home_page,name='home-page'),
    path('PMS',views.final_page,name='final'),
    path('add-student',views.insertStudent,name='new_student'),
    path('add-company',views.insertCompany,name='new_company'),
    path('add-summary-detail',views.insert_summary_details,name='new_summary_detail'),
    path('add-higherStudy-detail',views.insertHigherStudy,name='new_higherStudy_detail'),
    path('add-entrepreneurship-detail',views.insertEntrepreneurShip,name='new_entrepreneurship_detail'),
    path('summary',views.summary,name='summary'),
    path('summary_data',views.summary_data,name='summary_data'),
    path('higher-study-view',views.higher_study_data,name='higher_study_view'),
    path('entrepreneurship-data-view',views.entrepreneur_data,name='entrepreneurship_view'),
    
]
