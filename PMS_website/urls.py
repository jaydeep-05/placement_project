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
    path('summary',views.summary,name='summary'),
    path('summary_data',views.summary_data,name='summary_data'),
    
]
