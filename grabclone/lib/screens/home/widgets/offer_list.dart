import 'package:flutter/material.dart';

class OfferList extends StatelessWidget {
  const OfferList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Color(0xFFEBEBEB),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('GF5MCD 510%'),
                    Text('Grab Food'),
                  ],
                ),
                Image.asset(
                  'icons/ic-grab-food-promo.png',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
