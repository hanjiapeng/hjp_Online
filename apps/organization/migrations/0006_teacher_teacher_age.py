# Generated by Django 2.2.16 on 2020-11-12 14:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('organization', '0005_teacher_take_office'),
    ]

    operations = [
        migrations.AddField(
            model_name='teacher',
            name='teacher_age',
            field=models.IntegerField(default=25, verbose_name='年龄'),
        ),
    ]