import 'package:chetan_koli/Assigment7/FirebaseAuthentication/CustomWidgets/bg_image.dart';
import 'package:chetan_koli/Assigment7/FirebaseAuthentication/CustomWidgets/password_input.dart';
import 'package:chetan_koli/Assigment7/FirebaseAuthentication/CustomWidgets/round_btn.dart';
import 'package:chetan_koli/Assigment7/FirebaseAuthentication/CustomWidgets/text_field_input.dart';
import 'package:chetan_koli/Assigment7/FirebaseAuthentication/LoginUi/pallete.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(
          image: 'assets/images/login_bg.png',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const Flexible(
                child: Center(
                  child: Text(
                    'Chetan koli',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const TextInputField(
                    icon: FontAwesomeIcons.envelope,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  const PasswordInput(
                    icon: FontAwesomeIcons.lock,
                    hint: 'Password',
                    inputAction: TextInputAction.done,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'ForgotPassword'),
                    child: const Text(
                      'Forgot Password',
                      style: kBodyText,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                   RoundedButton(
                    buttonName: 'Login', btnClick: () => debugPrint("login"),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'CreateNewAccount'),
                child: Container(
                  child: const Text(
                    'Create New Account',
                    style: kBodyText,
                  ),
                  decoration: const BoxDecoration(
                      border:
                          Border(bottom: BorderSide(width: 1, color: kWhite))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}

login() {
  debugPrint("this is login");
}
