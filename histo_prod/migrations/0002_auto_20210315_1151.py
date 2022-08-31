# Generated by Django 3.1.4 on 2021-03-15 11:51

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('points_affaire', '0002_pointsaffaires_adresse'),
        ('gerants', '0001_initial'),
        ('histo_prod', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='historiqueprod',
            name='gerant',
            field=models.ForeignKey(default=0, on_delete=django.db.models.deletion.DO_NOTHING, to='gerants.utilisateurs'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='historiqueprod',
            name='point_vente',
            field=models.ForeignKey(default=0, on_delete=django.db.models.deletion.DO_NOTHING, to='points_affaire.pointsaffaires'),
            preserve_default=False,
        ),
    ]
