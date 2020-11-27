import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool obscureText;

  CustomInputField({@required this.icon, this.hintText, @required this.obscureText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.0),
      child: Container(
        height: 47.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 15.0, bottom: 11.0, top: 11.0, right: 15.0),
            hintText: hintText,
            suffixIcon: Icon(icon),
          ),
        ),
      ),
    );
  }
}
