// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'My Activity',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                'History',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onTap: () {
              print(
                'History',
              );
            },
          )
        ],
      ),
    );
  }
}
