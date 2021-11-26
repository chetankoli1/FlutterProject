import 'package:chetan_koli/Widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackBtn extends StatefulWidget {
  const BackBtn({Key? key}) : super(key: key);

  @override
  _BackBtnState createState() => _BackBtnState();
}

class _BackBtnState extends State<BackBtn> {
  Future<bool?> showWanning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Can You back!!!"),
          actions: [
            ElevatedButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text("No")),
            ElevatedButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text("Yes ")),
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final showPop = await showWanning(context);
        return showPop ?? false;
      },
      child: const Scaffold(
        appBar: CustomAppBar(
          title: "Back btn Example",
          bgcolor: Colors.green,
          size: 100.0,
        ),
        body: Center(
          child: Text(
            "This Overrded back button",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.black),
          ),
        ),
      ),
    );
  }
}
