import 'package:chetan_koli/Assigment6/SqlLiteDB/dbprovider.dart';
import 'package:chetan_koli/Assigment6/SqlLiteDB/formlayout.dart';
import 'package:chetan_koli/Assigment6/SqlLiteDB/formodel.dart';
import 'package:chetan_koli/Widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ViewAllUsers extends StatefulWidget {
  const ViewAllUsers({Key? key}) : super(key: key);

  @override
  _ViewAllUsersState createState() => _ViewAllUsersState();
}

class _ViewAllUsersState extends State<ViewAllUsers> {
  List<FormModel> datas = [];
  bool fetching = true;
  int currentIndex = 0;

  late DbProvider db;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  void initState() {
    super.initState();

    db = DbProvider();
    getData2();
  }

  void getData2() async {
    datas = await db.getData();
    setState(() {
      fetching = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "All Users in SqlLite",
        bgcolor: Colors.pink,
        size: 60.0,
      ),
      body: fetching
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemBuilder: (context, index) => FormLayout(
                  data: datas[index], edit: edit, index: index, delete: delete),
              itemCount: datas.length,
            ),
    );
  }

  void edit(index) {
    currentIndex = index;
    nameController.text = datas[index].name;
    emailController.text = datas[index].email;
    phoneController.text = datas[index].phone;
    addressController.text = datas[index].address;
    showUpdateDialog();
  }

  void delete(int index) {
    db.deletData(datas[index].id!);
    setState(() {
      datas.removeAt(index);
    });
  }

  void showUpdateDialog() async {
    return showDialog(context: context,
     builder: (BuildContext context) {
          return AlertDialog(
            contentPadding:  const EdgeInsets.all(14),
            content: Container(
              height: 150,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(labelText: "Name"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(labelText: "email"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: phoneController,
                      decoration: const InputDecoration(labelText: "phone"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: addressController,
                      decoration: const InputDecoration(labelText: "address"),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  FormModel newData = datas[currentIndex];
                  newData.name = nameController.text;
                  newData.email = emailController.text;
                  newData.phone = phoneController.text;
                  newData.address = addressController.text;
                  db.updateData(newData, newData.id!);
                  setState(() {});
                  Navigator.pop(context);
                },
                child: Text("Update"),
              ),
            ],
          );
        });
  }
}
