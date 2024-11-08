# Generated by Django 3.1.4 on 2021-05-19 17:21

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('administrateurs', '0007_remove_administrateurs_date_creation'),
        ('points_affaire', '0003_auto_20210408_1045'),
        ('produits', '0009_remove_produits_quantite'),
    ]

    operations = [
        migrations.CreateModel(
            name='HistoProd',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('qte_entrante', models.IntegerField()),
                ('date_ajout', models.DateTimeField(auto_now_add=True)),
                ('admin', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='administrateurs.administrateurs')),
                ('point', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='points_affaire.pointsaffaires')),
                ('produit', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='produits.produits')),
            ],
        ),
    ]
