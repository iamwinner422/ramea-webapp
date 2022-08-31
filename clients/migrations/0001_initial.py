# Generated by Django 3.1.6 on 2021-03-02 15:15

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('points_affaire', '0001_initial'),
        ('gerants', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Clients',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nom', models.CharField(max_length=35)),
                ('prenoms', models.CharField(max_length=55)),
                ('telephone', models.CharField(error_messages={'unique': 'Le téléphone saisi existe déjà!'}, max_length=8, unique=True)),
                ('adr_mail', models.CharField(max_length=255)),
                ('adr_phisique', models.CharField(max_length=155)),
                ('image', models.ImageField(blank=True, null=True, upload_to='clients_img/')),
                ('gerant', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='gerants.utilisateurs')),
                ('point_vente', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='points_affaire.pointsaffaires')),
            ],
        ),
    ]
