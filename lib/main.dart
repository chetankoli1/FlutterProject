import 'package:chetan_koli/Assigment2/calculator.dart';
import 'package:chetan_koli/Assigment3/TimerAndStopWatch/timerandspw.dart';
import 'package:chetan_koli/Assigment4/actionbar.dart';
import 'package:chetan_koli/Assigment4/mediaquery.dart';
import 'package:chetan_koli/Assigment4/obackbtn.dart';
import 'package:chetan_koli/Assigment5/drawer.dart';
import 'package:chetan_koli/Assigment5/drawer/dropdown.dart';
import 'package:chetan_koli/Assigment6/SqlLiteDB/form.dart';
import 'package:chetan_koli/Assigment6/SqlLiteDB/testlayout.dart';
import 'package:chetan_koli/Assigment6/SqlLiteDB/viewusers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import './Assigment3/RoutsAndNavigations/screen_one.dart';
import './Assigment3/RoutsAndNavigations/screen_three.dart';
import './Assigment3/RoutsAndNavigations/screen_two.dart';
import 'Assigment3/TimerAndStopWatch/stw.dart';
import 'Assigment7/FirebaseAuthentication/LoginUi/authui.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: const AuthUi(),
      routes: {
        '/one': (_) => const ScreenOne(),
        '/two': (_) => const ScreenTwo(),
        '/three': (_) => const ScreenThree(),
        '/viewUsers': (_) => const ViewAllUsers()
        //'/dorpdown':(_) => const DropDownMenu()
      },
    );
  }
}
