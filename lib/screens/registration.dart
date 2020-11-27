import 'package:flutter/material.dart';
import 'package:test_kulenkov_part2/components/custom_card.dart';
import 'package:test_kulenkov_part2/components/custom_elevated_button.dart';
import 'package:test_kulenkov_part2/components/custom_input_field.dart';
import 'package:test_kulenkov_part2/components/reusable_button.dart';

import '../constants.dart';

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Регистрация'),
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
            RegistrationCard(),
          ],
        ),
      ),
    );
  }
}


class RegistrationCard extends CustomCard{
  bool isTrue = true;
  bool isFalse = false;
  @override
  // TODO: implement headLineText
  String get headLineText => 'Регистрация';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0)
      ),
      height: 550.0,
      width: 400.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Text(
              headLineText,
              style: TextStyle(fontSize: 30.0),
            ),
          ),
          Container(
            child: CustomInputField(
                icon: Icons.supervised_user_circle_rounded,
                hintText: 'Полное имя',
                obscureText: false
            ),
          ),Container(
            child: CustomInputField(
                icon: Icons.email,
                hintText: 'Email',
                obscureText: false
            ),
          ),Container(
            child: CustomInputField(
                icon: Icons.phone,
                hintText: 'Номер телефона',
                obscureText: false
            ),
          ),Container(
            child: CustomInputField(
                icon: Icons.lock,
                hintText: 'Пароль',
                obscureText: true
            ),
          ),
          Row(
            children: [
              Container(
                child: Checkbox(
                  value: false,
                ),
              ),
              Text(
                'Я согласен c правилами сервиса'
              )
            ],
          ),
          Container(
              child: PositionSlider(),
          ),
          Container(
            width: 300.0,
            child: CustomElevatedButton(
              text: "Зарегистрироваться",
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text('Уже есть аккаунт?'),
                ),
                SizedBox(width: 5.0,),
                Container(
                  child: InkWell(
                      child: Text(
                        'Войти здесь',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: kHyperReferenceColor,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      }
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum Position {
  employer,
  candidate,
}

class PositionSlider extends StatefulWidget {
  @override
  _PositionSliderState createState() => _PositionSliderState();
}

class _PositionSliderState extends State<PositionSlider> {
  var selectedPosition;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ReusableButton(
            onPress: () {
              setState(() {
                selectedPosition = Position.candidate;
              });
            },
            color: selectedPosition == Position.candidate ? kActiveButtonColor : kInactiveButtonColor,
            child: Text(
                "Кандидат",
                style: TextStyle(
                  fontSize: 17.0,
                  color: selectedPosition == Position.candidate ? kActiveButtonFontColor : kInactiveButtonFontColor,
                ),
            ),
          ),
          ReusableButton(
            onPress: () {
              setState(() {
                selectedPosition = Position.employer;
              });
            },
            color: selectedPosition == Position.employer ? kActiveButtonColor : kInactiveButtonColor,
            child: Text(
                'Наниматель',
                style: TextStyle(
                  fontSize: 17.0,
                  color: selectedPosition == Position.employer ? kActiveButtonFontColor : kInactiveButtonFontColor,
                ),
            ),
          ),
        ],
      ),
    );
  }
}
