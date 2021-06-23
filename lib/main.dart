import 'package:eldorado/constants.dart';
import 'package:flutter/material.dart';

import 'main/main_page_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

      title: 'Eldocode',
      theme: ThemeData(
        backgroundColor: Constants.primaryColor,
        primaryColor: Constants.primaryColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(fontSize: 9, fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontSize: 9, fontWeight: FontWeight.w600),
        ),

      ),
      home: MainPageUi());
  }
}
