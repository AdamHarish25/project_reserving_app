// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, avoid_web_libraries_in_flutter, unused_import, non_constant_identifier_names, sort_child_properties_last, prefer_typing_uninitialized_variables

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_reserving_app/Colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_reserving_app/homePage.dart';

class RegistryPage extends StatefulWidget {
  const RegistryPage({Key? key}) : super(key: key);

  @override
  State<RegistryPage> createState() => _RegistryPageState();
}

class _RegistryPageState extends State<RegistryPage> {
  ScrollController scroll_1 = ScrollController();

  final _formKey = GlobalKey<FormState>();

  TextEditingController name_field = TextEditingController();
  TextEditingController email_field = TextEditingController();
  TextEditingController phone_field = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.keyboard_arrow_left_rounded,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        controller: scroll_1,
        child: Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/CozyLogo.png",
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Booking Registry",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: "PoppinsMed",
                        // fontWeight: F,
                      ),
                    ),
                  ],
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextFormField(
                      controller: name_field,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        labelText: "Name",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your name...';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      controller: email_field,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        labelText: "E-mail",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your E-mail correctly...';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      controller: phone_field,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        labelText: "Phone Number",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your phone number correctly...';
                        }
                        return null;
                      },
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 50,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a Snackbar.
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Data is processing..."),
                              ),
                            );
                            setState(() {
                              createNewDocument();
                              Future.delayed(
                                  Duration(
                                    seconds: 2,
                                  ), () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Booking request sent..."),
                                    duration: Duration(
                                      seconds: 2,
                                    ),
                                  ),
                                );
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => HomePage(),
                                  ),
                                );
                              });
                            });
                          }
                        },
                        child: Text("Send Booking Request"),
                        style: ElevatedButton.styleFrom(
                          primary: purpleDark,
                          fixedSize: Size(
                            MediaQuery.of(context).size.width,
                            50,
                          ),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final CollectionReference UserRegistry =
      FirebaseFirestore.instance.collection("User");
  final CollectionReference OrderReference =
      FirebaseFirestore.instance.collection("Orders");

  Future<String> get_UserData(DocumentReference doc_ref) async {
    DocumentSnapshot docSnap = await doc_ref.get();
    var doc_id2 = docSnap.reference.id;
    return doc_id2;
  }

  Future<String> get_OrderData(DocumentReference doc_ref) async {
    DocumentSnapshot docSnap = await doc_ref.get();
    var doc_id2 = docSnap.reference.id;
    return doc_id2;
  }

//To retrieve the string

  /// create a new document with a random id on register...
  void createNewDocument() async {
    String userDocumentID = await get_UserData(UserRegistry.doc());
    String orderDocumentID = await get_OrderData(OrderReference.doc());

    OrderReference.add({
      "order_id": orderDocumentID,
      "user_id": userDocumentID,
    });
    UserRegistry.add({
      "id": userDocumentID,
      "name": name_field.text,
      "email": email_field.text,
      "phone": phone_field.text,
    });

    setState(() {
      name_field.text = "";
      email_field.text = "";
      phone_field.text = "";
    });
  }
}
