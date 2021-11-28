import 'package:flutter/material.dart';

class TestLayout extends StatelessWidget {
  const TestLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5.0),
      elevation: 5.0,
      shadowColor: Colors.red,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "name",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.red,
              ),
            ),
            const Text(
              "email",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.green,
              ),
            ),
            const Text(
              "phone",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            const Text(
              "address",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.red,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Edit"),
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                    )),
                Container(
                    margin: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Delete"),
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
