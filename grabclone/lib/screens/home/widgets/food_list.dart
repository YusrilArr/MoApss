// ignore: prefer_const_constructors

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class FoodList extends StatefulWidget {
  final List<Map<String, dynamic>> foodData;
  const FoodList({super.key, required this.foodData});

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
          itemCount: widget.foodData.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return FoodItem(
              imgUrl: widget.foodData[index]['img_food'],
              foodName: widget.foodData[index]['food_name'],
              distance: widget.foodData[index]['distance'],
              avgRating: widget.foodData[index]['rating'],
              isPromo: true,
            );
          }),
    );
  }
}

class FoodItem extends StatelessWidget {
  final String imgUrl;
  final bool isPromo;
  final String foodName;
  final double distance;
  final double avgRating;
  const FoodItem({
    Key? key,
    required this.imgUrl,
    required this.isPromo,
    required this.foodName,
    required this.distance,
    required this.avgRating,
  }) : super(key: key);

  Widget promoBadge() {
    if (isPromo) {
      return Positioned(
        top: 5,
        left: 5,
        child: Container(
          padding: const EdgeInsets.symmetric(
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
      constraints: const BoxConstraints(
        maxWidth: 138,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Image.network(
                    imgUrl,
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  promoBadge(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: Text(
                foodName,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 5,
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
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
