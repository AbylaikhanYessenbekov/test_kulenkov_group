import 'package:flutter/material.dart';
import 'package:test_kulenkov_part2/components/drawer.dart';

import '../constants.dart';

class ProfileManagementEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(), // My own drawer class to avoid code repetition
      appBar: AppBar(
        title: Text(
            'Управление профилем'
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.person_pin,
                      size: 80.0,
                    ),
                    Text('Кандидат'),
                    Text('akyessebekov@gmail.com'),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: kAppBarColor,
              ),
            ),
            ListTile(
              title: Text(
                'Управление профилем',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Зарегистрирован с',
              ),
              trailing: Text("Апрель 2019"),
            ),
            ListTile(
              title: Text(
                'Дата рождения',
              ),
                trailing: Text("23.12.1999"),
            ),
            ListTile(
              title: Text(
                'Тип занятости',
              ),
              trailing: Text("Фриланс"),
            ),
            ListTile(
              title: Text(
                'Уровень',
              ),
              trailing: Text("Flutter разработчик"),
            ),
            ListTile(
              title: Text(
                'Опыт',
              ),
              trailing: Text("4 года"),
            ),
            ListTile(
              title: Text(
                'Специализация',
              ),
              trailing: Text("IT"),
            ),
            ListTile(
              title: Text(
                'Адрес',
              ),
              trailing: Text("г. Актау"),
            ),

          ],
        ),
      ),
    );
  }
}
