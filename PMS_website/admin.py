from django.contrib import admin
from django.contrib.admin.decorators import register
from . import models
# Register your models here.



@admin.register(models.Student_Details)
class Student_DetailsAdmin(admin.ModelAdmin):
    list_display = ['university_id','student_name','department','finishing_school_attended','placed_year']
    list_editable= ['student_name','department','finishing_school_attended','placed_year']
    ordering=['student_name','placed_year']
    search_fields=['university_id','student_name','department','finishing_school_attended','placed_year']
    list_per_page=15

@admin.register(models.Company_Details)
class Company_DetailsAdmin(admin.ModelAdmin):
    list_display=['university_serial_id','company_placed','offer_mode','company_type','ctc','dateOfInterview','receivedOfferLetter','dateOfOfferLetter','recruit_year']
    list_editable=['company_placed','offer_mode','company_type','ctc','dateOfInterview','receivedOfferLetter','dateOfOfferLetter','recruit_year']
    search_fields=['university_serial_id__student_name' ,'company_placed','offer_mode','ctc','dateOfInterview','receivedOfferLetter','dateOfOfferLetter','company_type']
    list_per_page=15

@admin.register(models.Summary_detail)
class Summary_detailAdmin(admin.ModelAdmin):
    list_display=['department','total_students','summary_year','eligible_students']
    list_editable=['total_students','eligible_students']
    