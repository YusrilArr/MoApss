// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BtnMainMenus extends StatefulWidget {
  const BtnMainMenus({super.key});

  @override
  State<BtnMainMenus> createState() => _BtnMainMenusState();
}

class _BtnMainMenusState extends State<BtnMainMenus> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: [
          MenuIcon(
            imageAsset: 'icons/ic-food.png',
            title: 'Feed',
          ),
          MenuIcon(
            imageAsset: 'icons/ic-mart.png',
            title: 'Mart',
          ),
          MenuIcon(
            imageAsset: 'icons/ic-car.png',
            title: 'Car',
          ),
          MenuIcon(
            imageAsset: 'icons/ic-bike.png',
            title: 'Bike',
          ),
          MenuIcon(
            imageAsset: 'icons/ic-express.png',
            title: 'Express',
          ),
          MenuIcon(
            imageAsset: 'icons/ic-health.png',
            title: 'Health',
          ),
          MenuIcon(
            imageAsset: 'icons/ic-jastip.png',
            title: 'Jastip',
          ),
          MenuIcon(
            imageAsset: 'icons/ic-more.png',
            title: 'More',
          ),
        ],
      ),
    );
  }
}

class MenuIcon extends StatelessWidget {
  final String title;
  final String imageAsset;

  const MenuIcon({
    Key? key,
    required this.title,
    required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {
            print(title);
          },
          icon: Image.asset(imageAsset),
          iconSize: 60,
        ),
        Text(title),
      ],
    );
  }
}
