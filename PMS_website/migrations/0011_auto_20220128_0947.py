# Generated by Django 3.2.6 on 2022-01-28 04:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('PMS_website', '0010_entrepreneurship'),
    ]

    operations = [
        migrations.AlterField(
            model_name='entrepreneurship',
            name='company_logo',
            field=models.ImageField(blank=True, upload_to='company-logos'),
        ),
        migrations.AlterField(
            model_name='entrepreneurship',
            name='team_image',
            field=models.ImageField(blank=True, upload_to='team-images'),
        ),
    ]
