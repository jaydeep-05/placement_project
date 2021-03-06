from distutils.command.upload import upload
from operator import mod
from django.db import models
from django.db.models.deletion import CASCADE, PROTECT


# Create your models here.
class Student_Details(models.Model):
    department_comp='COMP'
    department_it='IT'
    department_etrx='ETRX'
    department_extc='EXTC'
    department_aids='AI & DS'

    department_choices=[
        ('COMP',department_comp),
        ('IT',department_it),
        ('EXTC',department_extc),
        ('ETRX',department_etrx),
        ('AI&DS',department_aids),
    ]

    finishing_school_yes='Yes'
    finishing_school_no='No'
    finishing_school_notApplicable='NA'

    finishing_school_choices=[
        ('Yes',finishing_school_yes),
        ('No',finishing_school_no),
        ('NA',finishing_school_notApplicable)
    ]

    university_id=models.BigIntegerField(primary_key=True)
    student_name=models.CharField(max_length=255)
    department=models.CharField(max_length=255,choices=department_choices,default=department_comp)
    finishing_school_attended=models.CharField(max_length=5,choices=finishing_school_choices,default=finishing_school_notApplicable)
    placed_year=models.CharField(max_length=4)

    def __str__(self) -> str:
        return self.student_name
    


class Company_Details(models.Model):
    received_yes='Yes'
    received_no='No'
    received_choices=[
        ('Yes',received_yes),
        ('No',received_no)
    ]
    offer_mode_on='On Campus'
    offer_mode_off='Off Campus'
    offer_mode_choices=[
        ('On Campus',offer_mode_on),
        ('Off Campus',offer_mode_off),
    ]

    company_type_it='IT'
    company_type_non_it='Non IT'
    company_type_choices=[
        ('IT',company_type_it),
        ('Non IT',company_type_non_it)
    ]
    university_serial_id=models.ForeignKey(Student_Details,on_delete=PROTECT)
    company_placed=models.CharField(max_length=255)
    offer_mode=models.CharField(max_length=20,choices=offer_mode_choices,default=offer_mode_on)
    ctc=models.DecimalField(max_digits=4,decimal_places=2)
    dateOfInterview=models.CharField(max_length=255)
    receivedOfferLetter=models.CharField(max_length=255,choices=received_choices,default=received_no)
    dateOfOfferLetter=models.CharField(max_length=255,default="NA")
    recruit_year=models.CharField(max_length=5)
    company_type=models.CharField(max_length=255,choices=company_type_choices,default=company_type_it)
    def __str__(self) -> str:
        return self.company_placed

class Summary_detail(models.Model):
    department_comp='COMP'
    department_it='IT'
    department_etrx='ETRX'
    department_extc='EXTC'
    department_aids='AI & DS'

    department_choices=[
        ('COMP',department_comp),
        ('IT',department_it),
        ('EXTC',department_extc),
        ('ETRX',department_etrx),
        ('AI&DS',department_aids),
    ]

    department=models.CharField(max_length=255,choices=department_choices,default=department_comp)
    summary_year=models.CharField(max_length=4)
    total_students=models.IntegerField()
    eligible_students=models.IntegerField()
    def __str__(self) -> str:
        return self.summary_year

class higher_study(models.Model):
    department_comp='COMP'
    department_it='IT'
    department_etrx='ETRX'
    department_extc='EXTC'
    department_aids='AI & DS'

    department_choices=[
        ('COMP',department_comp),
        ('IT',department_it),
        ('EXTC',department_extc),
        ('ETRX',department_etrx),
        ('AI&DS',department_aids),
    ]

    department=models.CharField(max_length=255,choices=department_choices,default=department_comp)
    study_year=models.CharField(max_length=4)
    student_name=models.CharField(max_length=255)
    qualifying_exam=models.CharField(max_length=255)
    university=models.CharField(max_length=1000)
    country=models.CharField(max_length=255)
    course=models.CharField(max_length=255)
    def __str__(self) -> str:
        return self.student_name


class entrepreneurship(models.Model):
    department_comp='COMP'
    department_it='IT'
    department_etrx='ETRX'
    department_extc='EXTC'
    department_aids='AI & DS'

    department_choices=[
        ('COMP',department_comp),
        ('IT',department_it),
        ('EXTC',department_extc),
        ('ETRX',department_etrx),
        ('AI&DS',department_aids),
    ]

    department=models.CharField(max_length=255,choices=department_choices,default=department_comp)
    entrepreneurship_year=models.CharField(max_length=4)
    company_name=models.CharField(max_length=255,blank=True,default='')
    student_names=models.TextField()
    registration_number=models.CharField(max_length=1000,blank=True,default='NA')
    start_date=models.CharField(max_length=100,blank=True,default='NA')
    company_email=models.CharField(max_length=255, blank=True,default='NA')
    company_website=models.CharField(max_length=255,blank=True,default='NA')
    company_mobile=models.CharField(max_length=10,blank=True,default='NA')
    founder_name=models.CharField(max_length=255,blank=True,default='NA')
    organisation_type=models.CharField(max_length=255,blank=True,default='NA')
    incubation_year=models.CharField(max_length=4,blank=True,default='NA')
    company_logo=models.ImageField(blank=True,upload_to='company-logos')
    team_image=models.ImageField(blank=True,upload_to='team-images')
    def __str__(self) -> str:
        return self.company_name