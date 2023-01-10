// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grabclone/screens/main/main_screen.dart';
import 'package:grabclone/screens/payment/payment.dart';

void main() {
  runApp(GrabCloneUI());
}

class GrabCloneUI extends StatelessWidget {
  const GrabCloneUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GraBBY",
      home: MainScreen(),
    );
  }
}
