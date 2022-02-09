// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

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
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: TextFormField(
                // controller: searchController,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  labelText: 'Search.....',
                  prefixIcon: Icon(Icons.search),
                  
                  // border: OutlineInputBorder(),
                ),
                onFieldSubmitted: (value) {
                  // cubit.search(value);
                  // PostsCubit.get(context).getSearchUserPosts(value);
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'The terminology is mentioned in the following course : ',
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Expanded(
              child: Container(
                width: 300,
                child: ListView.separated(
                    itemBuilder: (context, indax) => Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(40)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Operating systems ',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                    separatorBuilder: (context, indax) => SizedBox(
                          height: 10,
                        ),
                    itemCount: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
