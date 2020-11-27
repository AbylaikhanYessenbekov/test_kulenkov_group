import 'package:flutter/material.dart';
import 'package:test_kulenkov_part2/components/drawer.dart';

import '../constants.dart';

class ProfileManagement extends StatelessWidget {
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
              onTap: () {
                Navigator.pushNamed(context, '/profileManagementEdit');
              },
              title: Text(
                  'Управление профилем',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
              ),
              subtitle: Text('Зарегестрирован'),
              trailing: Text('Апрель 2019'),
            ),
            ListTile(
              title: Text(
                'Обо мне',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Text('Пробьюсь через тернии к звездам'),
            ),
            ListTile(
              title: Text(
                'Местоположение на карте',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 15.0),
                child: Image.asset(
                  'images/map.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        ),
    );
  }
}
