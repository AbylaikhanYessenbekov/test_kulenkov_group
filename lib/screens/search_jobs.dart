import 'package:flutter/material.dart';
import 'package:test_kulenkov_part2/components/drawer.dart';
import 'package:test_kulenkov_part2/components/horizontally_scrollable_widget.dart';

import '../constants.dart';

class SearchJobs extends StatefulWidget {
  @override
  _SearchJobsState createState() => _SearchJobsState();
}

class _SearchJobsState extends State<SearchJobs> {
  String _jobCategory = 'Выберите из списка';
  String _qualification = 'Выберите из списка';
  String _salaryCurrency = 'Выберите из списка';
  String _jobLevel = 'Выберите из списка';
  String _skillsLevel = 'Выберите из списка';
  String _country = 'Выберите из списка';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('Подробнее'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Найти сейчас'),
          ),
          Container(
            child: ListTile(
              title: Container(
                // padding: EdgeInsets.only(top: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Поиск по слову',
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              trailing: Icon(
                  Icons.search,
                size: 30.0,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              // border: Border(bottom: Co),
            ),
            child: ListTile(
              title: Text('Категория работы'),
              subtitle: Text(_jobCategory),
              trailing: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  icon: Icon(Icons.arrow_drop_down),
                  onChanged: (String newValue) {
                    setState(() {
                      _jobCategory = newValue;
                    });
                  },
                  items: <String>[
                    'Аграрные',
                    'Безопасность',
                    'Военные',
                    'Инженерное',
                    'Искусство и культура',
                    'ИТ',
                    'Космос и авиация',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Квалификация'),
            subtitle: Text(_qualification),
            trailing: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon: Icon(Icons.arrow_drop_down),
                onChanged: (String newValue) {
                  setState(() {
                    _qualification = newValue;
                  });
                },
                items: <String>[
                  'Бакалавр',
                  'Магистр',
                  'Доктор наук',
                  'Профессор',
                  'Искусство и культура'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          ListTile(
            title: Text('Тип занятости'),
            subtitle: HorizontallyScrollableWidget(
              text1: 'Фриланс',
              text2: 'Полный день',
              text3: 'По договору',
              text4: 'Практикант',
              text5: 'Гибкий график',
            ),
          ),
          ListTile(
            title: Text('Валюта зарплаты'),
            subtitle: Text(_salaryCurrency),
            trailing: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon: Icon(Icons.arrow_drop_down),
                onChanged: (String newValue) {
                  setState(() {
                    _salaryCurrency = newValue;
                  });
                },
                items: <String>[
                  'Рубль',
                  'Тенге',
                  'Dollars',
                  'Pounds',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          ListTile(
            title: Text('Смена работы'),
            subtitle: HorizontallyScrollableWidget(
              text1: 'Утро',
              text2: 'Вечер',
              text3: 'Круглосуточно',
              text4: 'Ночь',
              text5: 'Гибкий график',
            ),
          ),
          ListTile(
            title: Text('Уровень работы'),
            subtitle: Text(_jobLevel),
            trailing: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon: Icon(Icons.arrow_drop_down),
                onChanged: (String newValue) {
                  setState(() {
                    _jobLevel = newValue;
                  });
                },
                items: <String>[
                  'Легкая',
                  'Средняя',
                  'Тяжелая',
                  '2020',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          ListTile(
            title: Text('Навыки работы'),
            subtitle: Text(_skillsLevel),
            trailing: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon: Icon(Icons.arrow_drop_down),
                onChanged: (String newValue) {
                  setState(() {
                    _skillsLevel = newValue;
                  });
                },
                items: <String>[
                  'Начинающий',
                  'Средний',
                  'Высокий',
                  'Yagami Light',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          ListTile(
            title: Text('Выберите страну'),
            subtitle: Text(_country),
            trailing: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon: Icon(Icons.arrow_drop_down),
                onChanged: (String newValue) {
                  setState(() {
                    _country = newValue;
                  });
                },
                items: <String>[
                  'Казахстан',
                  'Россия',
                  'USA',
                  'Neverland',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            color: kAppBarColor,
            child: FlatButton(
              child: Center(
                child: Text(
                  'Найти',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

