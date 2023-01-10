import 'package:flutter/material.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      padding: EdgeInsets.only(top: 20, bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 1,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 15,
                ),
                child: Image.asset(
                  'icons/ic-subs.png',
                  width: 60,
                  height: 60,
                ),
              ),
              Flexible(
                  child: Container(
                padding: EdgeInsets.only(right: 25),
                child: Text(
                  'Choose a subscription plan to save on rides, food, shoping, and more!',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ))
            ],
          ),
          Divider(
            color: Colors.black45,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'View Plans',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
