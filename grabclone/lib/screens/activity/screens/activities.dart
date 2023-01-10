// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  const Activities({super.key});

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20, 35, 0, 10),
            // ignore: prefer_const_constructors
            child: Text(
              'Recent',
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Flexible(
              child: ListView.builder(
            itemCount: 5, //jumlah list
            itemBuilder: (context, index) {
              return ActivityItems();
            },
          ))
        ],
      ),
    );
  }
}

class ActivityItems extends StatelessWidget {
  const ActivityItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(221, 224, 216, 216),
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'icons/ic-food.png',
            width: 50,
          ),

          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Easy Peasy Catur Tunggal',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '2 Items',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '7 Aug',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    child: Text(
                      'Reorder',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 15,
                      ),
                    ),
                    onTap: () {
                      print('Reorder');
                    },
                  )
                ],
              ),
            ),
          ),
          // Text('Well Done'),
        ],
      ),
    );
  }
}
