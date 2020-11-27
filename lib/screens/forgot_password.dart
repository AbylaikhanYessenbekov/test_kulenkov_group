import 'package:flutter/material.dart';
import 'package:test_kulenkov_part2/components/custom_card.dart';
import 'package:test_kulenkov_part2/components/custom_elevated_button.dart';
import 'package:test_kulenkov_part2/components/custom_input_field.dart';

import '../constants.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Восстановить пароль'),
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
            ForgotPasswordCard(),
          ],
        ),
      ),
    );
  }
}




class ForgotPasswordCard extends CustomCard{
  @override
  // TODO: implement headLineText
  String get headLineText => 'Забыл пароль';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0)
      ),
      height: 450.0,
      width: 400.0,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Text(
            headLineText,
            style: TextStyle(
                fontSize: 30.0,
            ),
          ),
        ),
        Container(
          child: CustomInputField(
            icon: Icons.email,
            hintText: 'Email',
            obscureText: false,
          ),
        ),
        Container(
          width: 300.0,
          child: CustomElevatedButton(
            text: "Потвердить",
          ),
        ),
        Container(
          child: RawMaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            constraints: BoxConstraints(),
            elevation: 2.0,
            fillColor: kCustomElevatedButtonColor,
            child: Icon(
                Icons.arrow_back_rounded,
                size: 30.0,
                color: Colors.white,
            ),
            padding: EdgeInsets.all(15.0),
            shape: CircleBorder(),
          ),
        )
        ],
      ),
    );
  }
}