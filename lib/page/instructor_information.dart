// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class InstructorInformationPage extends StatefulWidget {
  const InstructorInformationPage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<InstructorInformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        // height: double.infinity,
        color: Colors.teal[100],

        child: Column(
          children: [
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
            Text(
              'Instructors information',
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Expanded(
              child: Container(
                width: 300,
                child: ListView.separated(
                    itemBuilder: (context, indax) => Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Dr.Sara',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        'sara@taibhu.edu.sa',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.attach_file_rounded,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          ),
                        ),
                    separatorBuilder: (context, indax) => SizedBox(
                          height: 10,
                        ),
                    itemCount: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





























