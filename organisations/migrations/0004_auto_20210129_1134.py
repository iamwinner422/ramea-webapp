# Generated by Django 3.0.7 on 2021-01-29 11:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('organisations', '0003_auto_20210129_1106'),
    ]

    operations = [
        migrations.AlterField(
            model_name='organisations',
            name='telephone_p',
            field=models.IntegerField(max_length=8),
        ),
        migrations.AlterField(
            model_name='organisations',
            name='telephone_s',
            field=models.IntegerField(max_length=8, null=True),
        ),
    ]
