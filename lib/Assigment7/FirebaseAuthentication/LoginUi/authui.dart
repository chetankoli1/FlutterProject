import 'package:chetan_koli/Assigment7/FirebaseAuthentication/LoginUi/forgot.dart';
import 'package:chetan_koli/Assigment7/FirebaseAuthentication/LoginUi/login.dart';
import 'package:chetan_koli/Assigment7/FirebaseAuthentication/LoginUi/register.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const AuthUi());
}

class AuthUi extends StatelessWidget {
  const AuthUi({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chetan koli',
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        'ForgotPassword': (context) => const ForgotPassword(),
        'CreateNewAccount': (context) => const CreateNewAccount(),
      },
    );
  }
}