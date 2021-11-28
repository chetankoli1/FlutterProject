// ignore_for_file: avoid_print
import 'package:chetan_koli/Assigment6/SqlLiteDB/dbprovider.dart';
import 'package:chetan_koli/Assigment6/SqlLiteDB/formodel.dart';
import 'package:flutter/material.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({Key? key}) : super(key: key);

  @override
  _FormValidationState createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  GlobalKey<FormState> formStateKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  List<FormModel> datas = [];
  bool fetching = true;
  int currentIndex = 0;

  late DbProvider db;

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

  void validates() async {
    late var form = formStateKey.currentState;
    if (form!.validate()) {
      FormModel model = FormModel(
        id: null,
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        address: addressController.text,
      );
      db.insertData(model);
      model.id = datas[datas.length - 1].id! + 1;
      setState(() {
        datas.add(model);
      });
      nameController.clear();
      emailController.clear();
      phoneController.clear();
      addressController.clear();
      form.reset();
    } else {
      print("Not Validate");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back.png"),
            fit: BoxFit.cover,
            scale: 1.0,
          ),
        ),
        child: Form(
          key: formStateKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: const Color(0xFFFFFFFF).withOpacity(0.6),
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Full Name",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This Field required";
                    } else {
                      return null;
                    }
                  },
                  controller: nameController,
                ),
              ),
              Container(
                color: const Color(0xFFFFFFFF).withOpacity(0.6),
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Email Name",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This Field required";
                    } else {
                      return null;
                    }
                  },
                  controller: emailController,
                ),
              ),
              Container(
                color: const Color(0xFFFFFFFF).withOpacity(0.6),
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Phone No",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This Field required";
                    } else {
                      return null;
                    }
                  },
                  controller: phoneController,
                ),
              ),
              Container(
                color: const Color(0xFFFFFFFF).withOpacity(0.6),
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Address",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This Field required";
                    } else {
                      return null;
                    }
                  },
                  controller: addressController,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                height: 70.0,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () => validates(),
                    child: const Text("Add Data"),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                height: 70.0,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () => Navigator.pushNamed(context, "/viewUsers"),
                    child: const Text("View Data"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
