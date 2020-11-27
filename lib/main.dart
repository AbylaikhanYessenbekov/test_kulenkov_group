import 'package:flutter/material.dart';
import 'package:test_kulenkov_part2/screens/all_vacancies.dart';
import 'package:test_kulenkov_part2/screens/blog.dart';
import 'package:test_kulenkov_part2/screens/my_profile.dart';
import 'package:test_kulenkov_part2/screens/profile_management.dart';
import 'package:test_kulenkov_part2/constants.dart';
import 'package:test_kulenkov_part2/screens/forgot_password.dart';
import 'package:test_kulenkov_part2/screens/home_page.dart';
import 'package:test_kulenkov_part2/screens/login.dart';
import 'package:test_kulenkov_part2/screens/profile_management_edit.dart';
import 'package:test_kulenkov_part2/screens/registration.dart';
import 'package:test_kulenkov_part2/screens/search_jobs.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => Login(),
        '/forgotPassword': (context) => ForgotPassword(),
        '/registration': (context) => Registration(),
        '/homePage': (context) => HomePage(),
        '/profileManagement': (context) => ProfileManagement(),
        '/myProfile': (context) => MyProfile(),
        '/profileManagementEdit': (context) => ProfileManagementEdit(),
        '/searchJobs': (context) => SearchJobs(),
        '/allVacancies': (context) => AllVacancies(),
        '/blog': (context) => Blog(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: kAppBarColor,
        ),
      ),
      );
    }
}