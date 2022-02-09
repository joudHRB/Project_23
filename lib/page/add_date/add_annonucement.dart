// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddAnnonucement extends StatefulWidget {
  const AddAnnonucement({Key? key}) : super(key: key);

  @override
  _AddAnnonucementState createState() => _AddAnnonucementState();
}

class _AddAnnonucementState extends State<AddAnnonucement> {
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  var subjectController = TextEditingController();
  var discrptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        // height: double.infinity,
        color: Colors.teal[100],
        child: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                  color: Colors.teal[100],
                  width: 300,
                  height: 200,
                  child: Image.asset(
                    'assets/2.jpg',
                    // color: Colors.yellowAccent.s,
                  )),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Text(
                    'Add Annonucements',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Form(
                            key: formstate,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Subject: ',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    // borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: subjectController,
                                      validator: (value) {
                                        if (value!.length > 255) {
                                          return 'The space is finished';
                                        }
                                        if (value.isEmpty) {
                                          return 'You must write Subject first';
                                        }
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'subject',
                                        hintStyle: TextStyle(
                                            fontSize: 24,
                                            color: Color(0xFF638587)),
                                      ),
                                      maxLines: 10,
                                      autofocus: false,

                                      // onSaved: (val) => _cubit.postBody = val,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Description :',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    // borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: discrptionController,
                                      validator: (value) {
                                        if (value!.length > 255) {
                                          return 'The space is finished';
                                        }
                                        if (value.isEmpty) {
                                          return 'You must write Description first';
                                        }
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Description',
                                        hintStyle: TextStyle(
                                            fontSize: 24,
                                            color: Color(0xFF638587)),
                                      ),
                                      maxLines: 10,
                                      autofocus: false,

                                      // onSaved: (val) => _cubit.postBody = val,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Center(
                                  child: Container(
                                    width: 170,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blueGrey,
                                    ),
                                    child: Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: TextButton(
                                          onPressed: () {
                                            formstate.currentState!.save();

                                            if (formstate.currentState!
                                                .validate()) {
                                            } else {}
                                          },
                                          child: Text(
                                            'post',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
