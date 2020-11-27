import 'package:flutter/material.dart';
import 'package:test_kulenkov_part2/components/drawer.dart';
import 'package:test_kulenkov_part2/components/vacancy.dart';


class AllVacancies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text(
          'Все вакансии',
        ),
      ),
      body: Container(

        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Vacancy(
              jobType: 'Полное время',
              jobPosition: 'Начальник по складу',
              company: 'DNS',
              publishedAt: '27 ноября, 2020',
              salary: 10000.0,
              jobPlace: 'Воронеж, Россия',
            ),
            Vacancy(
              jobType: 'Временно',
              jobPosition: 'Ассистент редактора',
              company: 'Медуза',
              publishedAt: '5 апреля, 2021',
              salary: 50000.0,
              jobPlace: 'Москва, Россия',
            ),
            Vacancy(
              jobType: 'Стажировка',
              jobPosition: 'Ассистент менеджера',
              company: 'Эльдорадо',
              publishedAt: '5 апреля, 2020',
              salary: 30000.0,
              jobPlace: 'Санкт-Петербург, Россия',
            ),
            Vacancy(
              jobType: 'По договору',
              jobPosition: 'iOS Developer',
              company: 'Yandex',
              publishedAt: '5 июля, 2021',
              salary: 10000.0,
              jobPlace: 'Москва, Россия',
            ),
            Vacancy(
              jobType: 'Полный день',
              jobPosition: 'Flutter',
              company: 'Mediana',
              publishedAt: '27.09.2020',
              salary: 100000000.0,
              jobPlace: 'Актау, Казахстан',
            ),
          ],
        ),
      ),
    );
  }
}
