import 'package:chetan_koli/Widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "First Screen",
        bgcolor: Colors.amber,
        size: 60.0,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(8),
          height: 60.0,
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/two");
            },
            child: const Text("Next"),
          ),
        ),
      ),
    );
  }
}
