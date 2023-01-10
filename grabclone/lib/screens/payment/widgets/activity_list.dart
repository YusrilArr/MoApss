import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ActivityList extends StatelessWidget {
  const ActivityList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return PaymentItem(
            amount: '13.400',
            toCompany: 'PT. Solusi Cipta Indonesia',
          );
        },
      ),
    );
  }
}

class PaymentItem extends StatelessWidget {
  final String toCompany;
  final String amount;
  const PaymentItem({
    Key? key,
    required this.toCompany,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
        right: 20,
        left: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          7,
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 1,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'To $toCompany',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                '- IDR $amount',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                LineAwesomeIcons.angle_right,
                size: 18,
              )
            ],
          )
        ],
      ),
    );
  }
}
