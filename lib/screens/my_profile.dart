import 'package:flutter/material.dart';
import 'package:test_kulenkov_part2/components/drawer.dart';

import '../constants.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(), // My own drawer class to avoid code repetition
      appBar: AppBar(
        title: Text(
          'Мой профиль'
        ),
      ),
      body: Container(
        child: Center(
          child: Text('My Profile'),
        ),
      ),
    );
  }
}
