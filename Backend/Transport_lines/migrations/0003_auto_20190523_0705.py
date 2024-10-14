# Generated by Django 2.0 on 2019-05-23 14:05

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Transport_lines', '0002_auto_20190522_1312'),
    ]

    operations = [
        migrations.CreateModel(
            name='Ticket',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateField()),
                ('price', models.IntegerField()),
                ('departure_state', models.CharField(choices=[('LAG', 'Lagos'), ('ABJ', 'Abuja'), ('KAD', 'Kaduna'), ('JOS', 'Jos'), ('BEN', 'Benin'), ('SKT', 'Sokoto'), ('PHC', 'Portharcout'), ('ENU', 'Enugu'), ('IBD', 'Ibadan'), ('EDO', 'Edo'), ('OGN', 'Ogun'), ('DEL', 'Delta'), ('CAL', 'Calabar')], default='Choose a City', max_length=20)),
                ('arrival_state', models.CharField(choices=[('LAG', 'Lagos'), ('ABJ', 'Abuja'), ('KAD', 'Kaduna'), ('JOS', 'Jos'), ('BEN', 'Benin'), ('SKT', 'Sokoto'), ('PHC', 'Portharcout'), ('ENU', 'Enugu'), ('IBD', 'Ibadan'), ('EDO', 'Edo'), ('OGN', 'Ogun'), ('DEL', 'Delta'), ('CAL', 'Calabar')], default='Choose a City', max_length=20)),
                ('transport', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Transport_lines.TransportationLine')),
            ],
        ),
        migrations.RemoveField(
            model_name='schedule',
            name='transport',
        ),
        migrations.DeleteModel(
            name='Schedule',
        ),
    ]
