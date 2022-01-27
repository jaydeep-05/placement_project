from django.contrib import admin
from django.contrib.admin.decorators import register
from . import models
# Register your models here.


@admin.register(models.Student_Details)
class Student_DetailsAdmin(admin.ModelAdmin):
    list_display = ['university_id', 'student_name',
                    'department', 'finishing_school_attended', 'placed_year']
    list_editable = ['student_name', 'department',
                     'finishing_school_attended', 'placed_year']
    ordering = ['student_name', 'placed_year']
    search_fields = ['university_id', 'student_name',
                     'department', 'finishing_school_attended', 'placed_year']
    list_per_page = 15


@admin.register(models.Company_Details)
class Company_DetailsAdmin(admin.ModelAdmin):
    list_display = ['university_serial_id', 'company_placed', 'offer_mode', 'company_type',
                    'ctc', 'dateOfInterview', 'receivedOfferLetter', 'dateOfOfferLetter', 'recruit_year']
    list_editable = ['company_placed', 'offer_mode', 'company_type', 'ctc',
                     'dateOfInterview', 'receivedOfferLetter', 'dateOfOfferLetter', 'recruit_year']
    search_fields = ['university_serial_id__student_name', 'company_placed', 'offer_mode',
                     'ctc', 'dateOfInterview', 'receivedOfferLetter', 'dateOfOfferLetter', 'company_type']
    list_per_page = 15


@admin.register(models.Summary_detail)
class Summary_detailAdmin(admin.ModelAdmin):
    list_display = ['department', 'total_students',
                    'summary_year', 'eligible_students']
    list_editable = ['total_students', 'eligible_students']


@admin.register(models.higher_study)
class higher_studyAdmin(admin.ModelAdmin):
    list_display = ['student_name', 'department', 'study_year',
                    'qualifying_exam', 'university', 'country', 'course']
    list_editable = ['department', 'study_year',
                     'qualifying_exam', 'university', 'country', 'course']


admin.site.register(models.entrepreneurship)
# class entrepreneurshipAdmin(admin.ModelAdmin):
#     list_display = [
#         'department', 'entrepreneurship_year', 'company_name',
#         'student_names', 'registration_number', 'start_date',
#         'company_email', 'company_website', 'company_mobile', 'founder_name',
#         'organisation_type', 'incubation_year', 'company_logo', 'team_image',
#     ]
#     list_editable = ['entrepreneurship_year', 'company_name',
#                      'student_names', 'registration_number', 'start_date',
#                      'company_email', 'company_website', 'company_mobile', 'founder_name',
#                      'organisation_type', 'incubation_year', 'company_logo', 'team_image']
