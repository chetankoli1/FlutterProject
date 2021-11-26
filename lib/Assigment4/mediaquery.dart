import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.46,
                width: MediaQuery.of(context).size.width * 0.46,
                decoration: const BoxDecoration(color: Colors.yellow),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.46,
                width: MediaQuery.of(context).size.width * 0.46,
                decoration: const BoxDecoration(color: Colors.pink),
              )
            ],
          )
        ],
      ),
    );
  }
}
