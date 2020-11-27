import 'package:flutter/material.dart';
import 'package:test_kulenkov_part2/constants.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Function onPress;
  CustomElevatedButton({@required this.text, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: kCustomElevatedButtonColor,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

