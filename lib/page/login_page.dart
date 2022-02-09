// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:assistant_undergraduate/page/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int login = 1;
  int sinup = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
                color: Colors.yellowAccent.shade100,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            // color: Colors.yellowAccent.shade100,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 300,
                    child: Image.asset(
                      'assets/1.jpg',
                      // color: Colors.yellowAccent.s,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Welcome !',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Please sign Up or in for a better experince .',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  color: Colors.grey,
                  width: double.infinity,
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              setState(() {
                                login = 0;
                                sinup = 1;
                              });
                            },
                            child: Text(
                              'SIGN Up',
                              style: TextStyle(color: Colors.red),
                            )),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                login = 1;
                                sinup = 0;
                              });
                            },
                            child: Text(
                              'LOGIN',
                              style: TextStyle(color: Colors.red),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          if (login == 1 && sinup == 0)
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber[50],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                // controller: nameClincController,
                                // textDirection: textDirectionToAxisDirection(),
                                validator: (value) {
                                  if (value!.length > 30) {
                                    return 'The space is finished';
                                  }
                                  if (value.isEmpty) {
                                    return 'You must write post first';
                                  }
                                },

                                decoration: const InputDecoration(
                                  // border: OutlineInputBorder(),
                                  border: InputBorder.none,

                                  // hintText: 'Write here....',
                                  labelText: 'Email',
                                  // label: Text(
                                  //   'add',
                                  //   style: TextStyle(color: Colors.black),
                                  // ),
                                  // prefixIcon: Icon(
                                  //   Icons.alternate_email,
                                  //   color: Colors.black,
                                  // ),
                                  hintStyle: TextStyle(
                                      fontSize: 24, color: Colors.black),
                                ),
                                // style: TextStyle(
                                //     fontSize: 24, color: Colors.black),
                                // maxLines: 10,
                                autofocus: false,
                                // maxLength: 30,
                                // onSaved: (val) => _cubit.postBody = val,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                // controller: nameClincController,
                                // textDirection: textDirectionToAxisDirection(),
                                validator: (value) {
                                  if (value!.length > 30) {
                                    return 'The space is finished';
                                  }
                                  if (value.isEmpty) {
                                    return 'You must write post first';
                                  }
                                },

                                decoration: const InputDecoration(
                                  // border: OutlineInputBorder(),
                                  border: InputBorder.none,

                                  // hintText: 'Write here....',
                                  labelText: 'password',
                                  // label: Text(
                                  //   'add',
                                  //   style: TextStyle(color: Colors.black),
                                  // ),
                                  // prefixIcon: Icon(
                                  //   Icons.alternate_email,
                                  //   color: Colors.black,
                                  // ),
                                  hintStyle: TextStyle(
                                      fontSize: 24, color: Colors.black),
                                ),
                                // style: TextStyle(
                                //     fontSize: 24, color: Colors.black),
                                // maxLines: 10,
                                autofocus: false,
                                // maxLength: 30,
                                // onSaved: (val) => _cubit.postBody = val,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                            onPressed: () {}, child: Text('forgot password')),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.yellowAccent.shade100,
                                borderRadius: BorderRadius.circular(30)),
                            child: 
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                    },
                                    child: Icon(Icons.arrow_forward))),
                         
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          if (login == 0 && sinup == 1)
            Container(
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              // controller: nameClincController,
                              // textDirection: textDirectionToAxisDirection(),
                              validator: (value) {
                                if (value!.length > 30) {
                                  return 'The space is finished';
                                }
                                if (value.isEmpty) {
                                  return 'You must write post first';
                                }
                              },

                              decoration: const InputDecoration(
                                // border: OutlineInputBorder(),
                                border: InputBorder.none,

                                // hintText: 'Write here....',
                                labelText: 'Full Name',
                                // label: Text(
                                //   'add',
                                //   style: TextStyle(color: Colors.black),
                                // ),
                                // prefixIcon: Icon(
                                //   Icons.alternate_email,
                                //   color: Colors.black,
                                // ),
                                hintStyle: TextStyle(
                                    fontSize: 24, color: Colors.black),
                              ),
                              // style: TextStyle(
                              //     fontSize: 24, color: Colors.black),
                              // maxLines: 10,
                              autofocus: false,
                              // maxLength: 30,
                              // onSaved: (val) => _cubit.postBody = val,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              // controller: nameClincController,
                              // textDirection: textDirectionToAxisDirection(),
                              validator: (value) {
                                if (value!.length > 30) {
                                  return 'The space is finished';
                                }
                                if (value.isEmpty) {
                                  return 'You must write post first';
                                }
                              },

                              decoration: const InputDecoration(
                                // border: OutlineInputBorder(),
                                border: InputBorder.none,

                                // hintText: 'Write here....',
                                labelText: 'Email',
                                // label: Text(
                                //   'add',
                                //   style: TextStyle(color: Colors.black),
                                // ),
                                // prefixIcon: Icon(
                                //   Icons.alternate_email,
                                //   color: Colors.black,
                                // ),
                                hintStyle: TextStyle(
                                    fontSize: 24, color: Colors.black),
                              ),
                              // style: TextStyle(
                              //     fontSize: 24, color: Colors.black),
                              // maxLines: 10,
                              autofocus: false,
                              // maxLength: 30,
                              // onSaved: (val) => _cubit.postBody = val,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              // controller: nameClincController,
                              // textDirection: textDirectionToAxisDirection(),
                              validator: (value) {
                                if (value!.length > 30) {
                                  return 'The space is finished';
                                }
                                if (value.isEmpty) {
                                  return 'You must write post first';
                                }
                              },

                              decoration: const InputDecoration(
                                // border: OutlineInputBorder(),
                                border: InputBorder.none,

                                // hintText: 'Write here....',
                                labelText: 'password',
                                // label: Text(
                                //   'add',
                                //   style: TextStyle(color: Colors.black),
                                // ),
                                // prefixIcon: Icon(
                                //   Icons.alternate_email,
                                //   color: Colors.black,
                                // ),
                                hintStyle: TextStyle(
                                    fontSize: 24, color: Colors.black),
                              ),
                              // style: TextStyle(
                              //     fontSize: 24, color: Colors.black),
                              // maxLines: 10,
                              autofocus: false,
                              // maxLength: 30,
                              // onSaved: (val) => _cubit.postBody = val,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'you aiready have an account ? Log in use without login',
                            style: TextStyle(color: Colors.red),
                            textAlign: TextAlign.center,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.yellowAccent.shade100,
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                  },
                                  child: Icon(Icons.arrow_forward))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
