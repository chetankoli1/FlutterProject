import 'package:chetan_koli/Widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Second Screen",
        bgcolor: Colors.purple,
        size: 60.0,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(8),
          height: 60.0,
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/three");
            },
            child: const Text("Next"),
          ),
        ),
      ),
    );
  }
}
