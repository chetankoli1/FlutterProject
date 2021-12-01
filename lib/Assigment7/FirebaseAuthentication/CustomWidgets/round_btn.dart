import 'dart:html';

import 'package:chetan_koli/Assigment7/FirebaseAuthentication/LoginUi/pallete.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
   RoundedButton({
    Key? key,
     required this.buttonName,
     required this.btnClick
  }) : super(key: key);

  final String? buttonName;
  late GestureTapCallback? btnClick;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kBlue,
      ),
      child: ElevatedButton(
        onPressed: () => btnClick,
        child: Text(
          buttonName!,
          style: kBodyText.copyWith(fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
        ),
      ),
    );
  }

}
