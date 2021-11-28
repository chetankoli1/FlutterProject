import 'package:chetan_koli/Assigment6/SqlLiteDB/formodel.dart';
import 'package:flutter/material.dart';

class FormLayout extends StatelessWidget {
  const FormLayout({
    Key? key,
    required this.data,
    required this.edit,
    required this.index,
    required this.delete,
  }) : super(key: key);

  final FormModel data;
  final Function edit;
  final Function delete;

  final int index;

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
            Text(
              data.name,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.red,
              ),
            ),
            Text(
              data.email,
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.green,
              ),
            ),
            Text(
              data.phone,
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            Text(
              data.address,
              style: const TextStyle(
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
                      onPressed: () {
                        edit(index);
                      },
                      child: const Text("Edit"),
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                    )),
                Container(
                    margin: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        delete(index);
                      },
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
