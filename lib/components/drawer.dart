import 'package:flutter/material.dart';

import '../constants.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
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
              leading: Icon(Icons.home),
              title: Text('Главная'),
              onTap: () {
                Navigator.pushNamed(context, "/homePage");
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text('Управление профилем'),
              onTap: () {
                Navigator.pushNamed(context, "/profileManagement");
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Мой профиль'),
              onTap: () {
                Navigator.pushNamed(context, "/myProfile");
              },
            ),
            ListTile(
              leading: Icon(Icons.insert_drive_file_rounded),
              title: Text('Мои резюме'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.note_outlined),
              title: Text('Все вакансии'),
              onTap: () {
                Navigator.pushNamed(context, '/allVacancies');
              },
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('Заявки на вакансии'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.supervisor_account_sharp),
              title: Text('Вакансии для меня'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.save_rounded),
              title: Text('Сохраненные вакансии'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
