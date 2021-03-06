import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const AuthApp());
}

class AuthApp extends StatefulWidget {
  const AuthApp({ Key? key }) : super(key: key);

  @override
  _AuthAppState createState() => _AuthAppState();
}

class _AuthAppState extends State<AuthApp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Auth User (Logged ' + (user == null ? 'out' : 'in') + ')'),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(controller: emailController),
              TextField(controller: passwordController),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(child: const Text('Sign Up'),
                  onPressed: () async {
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                    setState(() {});
                  }),
                  ElevatedButton(child: const Text('Sign In'),
                  onPressed: () async {
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                    setState(() {});
                  }),
                  ElevatedButton(child: const Text('Log Out'),
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    setState(() {});
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}