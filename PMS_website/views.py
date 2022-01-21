from django.forms import fields
from django.shortcuts import render,redirect
from django.db.models import Count
from .models import Student_Details,Company_Details
from .forms import *
from django.contrib import messages
# Create your views here.
def home_page(request):
    years=Student_Details.objects.filter().values('placed_year').distinct()
    return render(request,'PMS_website/home.html',{'years':years})

def final_page(request):
    department = request.POST.get('department')
    placed_year = request.POST.get('year')
    if department=='All':
        results=Company_Details.objects.filter(university_serial_id__placed_year=placed_year)
    else:
        results = Company_Details.objects.filter(university_serial_id__department=department, university_serial_id__placed_year=placed_year)
    
    if department=='All':
        company_wise=Company_Details.objects.filter(university_serial_id__placed_year=placed_year).values('company_placed','ctc','offer_mode','company_type').order_by('company_placed').annotate(the_count=Count('company_placed'))
    else:
        company_wise=Company_Details.objects.filter(university_serial_id__department=department, university_serial_id__placed_year=placed_year).values('company_placed','ctc','offer_mode','company_type').order_by('company_placed').annotate(the_count=Count('company_placed'))
    
    return render(request,'PMS_website/final.html',{'results':results,'companies':company_wise,})

def insertStudent(request):
    if request.method == 'POST':
        form = studentForm(request.POST or None)
        if form.is_valid():
            instance = form.save(commit=False)
            instance.save()
            messages.success(request,'Student detail added successfully')
            return redirect('home-page')
    else:
        form = studentForm()
    return render(request, "PMS_website/student_form.html", {"form": form})

def insertCompany(request):
    if request.method == 'POST':
        form = companyForm(request.POST or None)
        if form.is_valid():
            instance = form.save(commit=False)
            instance.save()
            messages.success(request,'Company detail added successfully')
            return redirect('home-page')
    else:
        form = companyForm()
    return render(request, "PMS_website/company_form.html", {"form": form})

def insert_summary_details(request):
    if request.method == 'POST':
        form = summaryForm(request.POST or None)
        if form.is_valid():
            instance = form.save(commit=False)
            instance.save()
            messages.success(request,'Summary detail added successfully')
            return redirect('home-page')
    else:
        form = summaryForm()
    return render(request, "PMS_website/summary_form.html", {"form": form})

def summary(request):
    year_new=Student_Details.objects.filter().values('placed_year').distinct()
    return render(request,'PMS_website/summary.html',{'years':year_new,})


def summary_data(request):
    department = request.POST.get('department')
    from_year = request.POST.get('from_year')
    to_year = request.POST.get('to_year')

    if isinstance(from_year,str):
        start=int(from_year)
    else:
        start=0
    if isinstance(to_year,str):
        end=int(to_year)
    else:
        end=0
    n=end-start
    y=[]
    y.append(str(start))
    for _ in range (1,n+1):
        k=start+1
        start=k
        y.append(str(k))

    total_placed=[]
    total_student=[]
    total_eligible=[]
    total_offers=[]
    total_offers_on=[]
    total_offers_off=[]
    total_offers_it=[]
    total_offers_nonit=[]


    for years in y:
        total_placed_data=Company_Details.objects.filter(university_serial_id__placed_year=years,university_serial_id__department=department).distinct('university_serial_id__student_name')
        total_placed.append(total_placed_data)

    for years in y:
        try:
            total_student_data=Summary_detail.objects.filter(summary_year=years,department=department).get()  
        except Summary_detail.DoesNotExist:
            total_student_data=None
        total_student.append(total_student_data)

    for years in y:
        try:
            total_eligible_data=Summary_detail.objects.filter(summary_year=years,department=department).get()
        except Summary_detail.DoesNotExist:
            total_eligible_data=None
        total_eligible.append(total_eligible_data)
    

    for years in y:
        total_offers_data=Company_Details.objects.filter(university_serial_id__placed_year=years,university_serial_id__department=department)
        total_offers.append(total_offers_data)

    for years in y:
        total_offers_on_data=Company_Details.objects.filter(university_serial_id__placed_year=years,university_serial_id__department=department,offer_mode='On Campus')
        total_offers_on.append(total_offers_on_data)
    
    for years in y:
        total_offers_off_data=Company_Details.objects.filter(university_serial_id__placed_year=years,university_serial_id__department=department,offer_mode='Off Campus')
        total_offers_off.append(total_offers_off_data)
    
    for years in y:
        total_offers_it_data=Company_Details.objects.filter(university_serial_id__placed_year=years,university_serial_id__department=department,company_type='IT')
        total_offers_it.append(total_offers_it_data)
    
    for years in y:
        total_offers_nonit_data=Company_Details.objects.filter(university_serial_id__placed_year=years,university_serial_id__department=department,company_type='Non IT')
        total_offers_nonit.append(total_offers_nonit_data)

    res=[]

    for years in y:
        s=Summary_detail.objects.filter(summary_year=years,department=department).get()
        t=Company_Details.objects.filter(university_serial_id__placed_year=years,university_serial_id__department=department).distinct('university_serial_id__student_name').count()
        if s.total_students==0:
            s.total_students=1
        percentage=round((t/(s.total_students))*100,2)
        res.append(percentage)
    return render(request,'PMS_website/summary_data.html',{
        "total_placed":total_placed,
        "total_student":total_student,
        'total_eligible':total_eligible,
        'total_offers':total_offers,
        'total_offers_on':total_offers_on,
        'total_offers_off':total_offers_off,
        'total_offers_it':total_offers_it,
        'total_offers_nonit':total_offers_nonit,
        'percentages':res,
    })


