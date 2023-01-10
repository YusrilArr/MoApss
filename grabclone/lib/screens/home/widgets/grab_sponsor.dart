// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GrabSponsor extends StatefulWidget {
  final String imgSponsor;
  final String titleSponsor;
  final String sponsoredBy;
  const GrabSponsor(
      {super.key,
      required this.imgSponsor,
      required this.sponsoredBy,
      required this.titleSponsor});

  @override
  State<GrabSponsor> createState() => _GrabSponsorState();
}

class _GrabSponsorState extends State<GrabSponsor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              widget.imgSponsor,
              width: double.infinity,
              height: 150,
              fit: BoxFit.fill,
            ),

            // Image.network(
            //   widget.imgSponsor,
            //   width: double.infinity,
            //   height: 150,
            //   fit: BoxFit.cover,
            // ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              widget.titleSponsor,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              'Sponsored By ${widget.sponsoredBy}',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13,
                color: Colors.black38,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
