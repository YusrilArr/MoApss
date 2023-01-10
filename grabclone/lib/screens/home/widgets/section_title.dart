// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Flexible(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color(0xFFEBEBEB),
            ),
            child: Icon(
              LineAwesomeIcons.arrow_right,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
