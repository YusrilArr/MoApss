// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:grabclone/screens/payment/widgets/activity_list.dart';
import 'package:grabclone/screens/payment/widgets/section_title.dart';
import 'package:grabclone/screens/payment/widgets/subscription_card.dart';
import 'package:grabclone/screens/payment/widgets/top_menu.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopMenu(),
              SectionTitle(title: 'Subscription'),
              SubscriptionCard(),
              SectionTitle(title: 'Recent Activity'),
              ActivityList(),
            ],
          ),
        ),
      ),
    );
  }
}
