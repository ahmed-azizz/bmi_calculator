import 'package:bmi_calculator/Screens/Introduction_screen.dart';
import 'package:bmi_calculator/Screens/ResultScreen.dart';
import 'package:bmi_calculator/Screens/bmi_screen.dart';
import 'package:flutter/material.dart';

class appView extends StatelessWidget {
  const appView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/',

      routes: {


        '/': (context) => introduction_view(),
        '/bmiScreen': (context) => bmi_view(),
        '/ResultPage': (context) => ResultScreen(),

      },


    );
  }
}
