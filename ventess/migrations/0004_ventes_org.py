# Generated by Django 3.1 on 2021-07-05 16:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('organisations', '0007_auto_20210208_1420'),
        ('ventess', '0003_histoprodvte'),
    ]

    operations = [
        migrations.AddField(
            model_name='ventes',
            name='org',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.DO_NOTHING, to='organisations.organisations'),
            preserve_default=False,
        ),
    ]
