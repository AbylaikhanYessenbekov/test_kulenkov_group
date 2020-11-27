import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaButton extends StatelessWidget {
  final IconData icon;

  SocialMediaButton({@required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      constraints: BoxConstraints(),
      elevation: 2.0,
      fillColor: Colors.white,
      child: FaIcon(
        icon,
        size: 35.0,
      ),
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
    );
  }
}
