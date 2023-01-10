// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grabclone/data_dummy/restaurant_data.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class RestaurantList extends StatefulWidget {
  final List<Map<String, dynamic>> restaurantData;
  const RestaurantList({super.key, required this.restaurantData});

  @override
  State<RestaurantList> createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: widget.restaurantData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 0) {
            return RestaurantItems(
              imgResult: widget.restaurantData[index]['img_restaurant_url'],
              restaurantName: widget.restaurantData[index]['restaurant_name'],
              distance: widget.restaurantData[index]['distance'],
              avgRating: widget.restaurantData[index]['rating'],
              isPromo: true,
              index: 0,
            );
          } else {
            return RestaurantItems(
              imgResult: widget.restaurantData[index]['img_restaurant_url'],
              isPromo: true,
              restaurantName: widget.restaurantData[index]['restaurant_name'],
              distance: widget.restaurantData[index]['distance'],
              avgRating: widget.restaurantData[index]['rating'],
            );
          }
        },
      ),
    );
  }
}

class RestaurantItems extends StatelessWidget {
  final int? index;
  final String imgResult;
  final bool isPromo;
  final String restaurantName;
  final double distance;
  final double avgRating;

  const RestaurantItems({
    Key? key,
    this.index,
    required this.imgResult,
    required this.isPromo,
    required this.restaurantName,
    required this.distance,
    required this.avgRating,
  }) : super(key: key);

  Widget promoBadge() {
    if (isPromo) {
      return Positioned(
        top: 5,
        left: 5,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Colors.black,
          ),
          child: const Text(
            'Promo',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }
    return SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: (index == 0 && index != null)
          ? BoxConstraints(maxWidth: 187)
          : BoxConstraints(maxWidth: 180),
      child: Container(
        padding: (index == 0 && index != null)
            ? EdgeInsets.only(right: 2, left: 10)
            : EdgeInsets.only(right: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //ClipRReach untuk memasukkan texs didalam sebuah image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Image.network(
                    imgResult,
                  ),
                  promoBadge(),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Flexible(
              child: Text(
                restaurantName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '$distance km',
                ),
                Text(' . '),
                Icon(
                  LineAwesomeIcons.star_1,
                  size: 13,
                  color: Colors.orange,
                ),
                Text(
                  avgRating.toString(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
