import 'package:chetan_koli/Assigment2/calculator.dart';
import 'package:chetan_koli/Assigment3/TimerAndStopWatch/timerandspw.dart';
import 'package:chetan_koli/Assigment4/actionbar.dart';
import 'package:chetan_koli/Assigment4/mediaquery.dart';
import 'package:chetan_koli/Assigment4/obackbtn.dart';
import 'package:chetan_koli/Assigment5/drawer.dart';
import 'package:chetan_koli/Assigment5/drawer/dropdown.dart';
import 'package:flutter/material.dart';

import './Assigment3/RoutsAndNavigations/screen_one.dart';
import './Assigment3/RoutsAndNavigations/screen_three.dart';
import './Assigment3/RoutsAndNavigations/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CalcApp(),
      routes: {
        '/one': (_) => const ScreenOne(),
        '/two': (_) => const ScreenTwo(),
        '/three': (_) => const ScreenThree(),
        //'/dorpdown':(_) => const DropDownMenu()
      },
    );
  }
}
