import 'package:flutter/material.dart';


class ReusableButton extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onPress;

  ReusableButton({this.color, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPress,
        child: Container(
          width: 150.0,
          height: 30.0,
          child: Center(child: child),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.rectangle,
          ),
        )
    );
  }
}
