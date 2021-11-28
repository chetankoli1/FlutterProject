// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ActionbarAndLeading extends StatelessWidget {
  const ActionbarAndLeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Hello Appbar"),
        leading: GestureDetector(
          onTap: () {
            print("star Clicked");
          },
          child: const Icon(
            Icons.star,
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  print("search Clicked");
                },
                child: const Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  print("Menu Clicked");
                },
                child: const Icon(Icons.more_vert),
              )),
        ],
      ),
    );
  }
}
