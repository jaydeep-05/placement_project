# Generated by Django 3.2.6 on 2021-09-28 08:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('PMS_website', '0007_summary_detail_eligible_students'),
    ]

    operations = [
        migrations.AlterField(
            model_name='summary_detail',
            name='eligible_students',
            field=models.IntegerField(),
        ),
    ]
