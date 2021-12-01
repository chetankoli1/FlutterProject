import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginWithAnanomus extends StatefulWidget {
  const LoginWithAnanomus({Key? key}) : super(key: key);

  @override
  _LoginWithAnanomusState createState() => _LoginWithAnanomusState();
}

class _LoginWithAnanomusState extends State<LoginWithAnanomus> {
  String? userUid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chetan koli"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              await FirebaseAuth.instance.signInAnonymously();
              setState(() {
                User? user = FirebaseAuth.instance.currentUser;
                userUid = user!.uid;
              });
            },
            child: const Text("Login with Anonymous"),
          ),
          Text(userUid!)
        ],
      )),
    );
  }
}
