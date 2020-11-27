import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_kulenkov_part2/components/custom_bottom_navbar.dart';
import 'package:test_kulenkov_part2/components/custom_card.dart';
import 'package:test_kulenkov_part2/components/custom_elevated_button.dart';
import 'package:test_kulenkov_part2/components/custom_input_field.dart';
import 'package:test_kulenkov_part2/components/drawer.dart';
import 'package:test_kulenkov_part2/components/social_media_button.dart';

import '../constants.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text('Главная'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/pexels-fabian-wiktor-3471423.jpg'),
              fit: BoxFit.fill
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SearchVacancyCard(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class SearchVacancyCard extends StatefulWidget {

  @override
  _SearchVacancyCardState createState() => _SearchVacancyCardState();
}

class _SearchVacancyCardState extends State<SearchVacancyCard> {
  double _currentSliderValue = 50.0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
      height: 450.0,
      width: 400.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              "Поиск по 1500+ вакансиям",
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          Container(
            child: Text('Поиск в 146 специализациях'),
          ),
          Container(
            child: CustomInputField(
                icon: Icons.search,
                hintText: 'Поиск по слову',
                obscureText: false
            ),
          ),
          Container(
            child: CustomInputField(
              icon: Icons.home,
              hintText: 'Password',
              obscureText: true, //для скрытия поле пароля
            ),
          ),
          Container(
            child: Row(
              children: [
                Text('В каком радиусе от вас(км) '),
                Container(
                  width: 70.0,
                  height: 25.0,
                  child: Center(child: Text(_currentSliderValue.toString())),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                )
              ],
            ),
          ),
          Slider(
            value: _currentSliderValue,
            min: 0.0,
            max: 100.0,
            divisions: 100,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
          Container(
            width: 300.0,
            child: CustomElevatedButton(
                text: "Потвердить",
                onPress: () {
                  Navigator.pushNamed(context, '/homePage');
                }
            ),
          ),
        ],
      ),
    );
  }
}
