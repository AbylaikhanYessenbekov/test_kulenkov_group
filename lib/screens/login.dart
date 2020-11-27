import 'package:flutter/material.dart';
import 'package:test_kulenkov_part2/components/custom_card.dart';
import 'package:test_kulenkov_part2/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_kulenkov_part2/components/custom_elevated_button.dart';
import 'package:test_kulenkov_part2/components/custom_input_field.dart';
import 'package:test_kulenkov_part2/components/social_media_button.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Войти'),
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
            LoginCard(),
          ],
        ),
      ),
    );
  }
}



class LoginCard extends CustomCard {
  @override
  // TODO: implement headLineText
  String get headLineText => 'Войти';
  @override
  Widget build(BuildContext context) {
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
              headLineText,
              style: TextStyle(fontSize: 30.0),
            ),
          ),
          Container(
              child: CustomInputField(
                icon: Icons.email,
                hintText: 'Email',
                obscureText: false
            ),
          ),
          Container(
              child: CustomInputField(
                icon: Icons.lock,
                hintText: 'Password',
                obscureText: true, //для скрытия поле пароля
              ),
          ),
          Container(
            child: InkWell(
              child: Text(
                'Забыл пароль',
                style: TextStyle(
                  color: kHyperReferenceColor,
                ),
              ),
              onTap: () => {
                Navigator.pushNamed(context, '/forgotPassword'),
              },
            ),
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
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialMediaButton(icon: FontAwesomeIcons.instagram),
                SocialMediaButton(icon: FontAwesomeIcons.facebook),
                SocialMediaButton(icon: FontAwesomeIcons.google),
                SocialMediaButton(icon: FontAwesomeIcons.twitter),
              ],
            ),
          ),
          Container(
            child: Text('Нет аккаунта?'),
          ),
          Container(
            child: InkWell(
              child: Text(
                'Зарегистрироваться',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: kHyperReferenceColor,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/registration');
            }
            ),
          ),
        ],
      ),
    );
  }
}
