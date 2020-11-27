import 'package:flutter/material.dart';


class CustomCard extends StatelessWidget {
    final String headLineText;
    final Widget cardChild;
  CustomCard({this.headLineText, this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0)
      ),
      // height: 450.0,
      // width: 400.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: cardChild,
          ),
        ],
      ),
    );
  }
}
