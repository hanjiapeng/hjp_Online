# Generated by Django 2.2.16 on 2020-11-09 20:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('organization', '0004_teacher_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='teacher',
            name='take_office',
            field=models.CharField(default='', max_length=100, verbose_name='就职'),
        ),
    ]