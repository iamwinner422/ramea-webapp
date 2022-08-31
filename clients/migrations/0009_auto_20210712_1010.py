# Generated by Django 3.1 on 2021-07-12 10:10

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('gerants', '0001_initial'),
        ('points_affaire', '0003_auto_20210408_1045'),
        ('clients', '0008_auto_20210407_1541'),
    ]

    operations = [
        migrations.AlterField(
            model_name='clients',
            name='gerant',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='gerants.utilisateurs'),
        ),
        migrations.AlterField(
            model_name='clients',
            name='point_vente',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='points_affaire.pointsaffaires'),
        ),
    ]
