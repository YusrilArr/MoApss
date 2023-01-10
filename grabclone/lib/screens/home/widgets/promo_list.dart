// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class PromoList extends StatelessWidget {
  const PromoList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgdHbUe2-e2nMk-_2_2uRL3AOVvJznDmPfUDNamwzgN4o9f1iL6BuIPh0kzg0xEQdeX5j1o14lP76ky0NODlbeKF_JPpk-kiWlQrX9pqtm1kJEvmC1Z0hCVFAT4rY9PfMiFpJwttBxRS0cWGrCM6oQ2t51kHKjg5RPZ6cxAY2R6XZ0gtiy641HmNZ4N/s1600/Katalog%20Promo%20GRABFOOD%20Terbaru%2026%20September%20-%202%20Oktober%202022.jpg',
                        width: double.infinity,
                        height: 140,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
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
                        child: Text(
                          'Promo',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: Text(
                    'Serbu Diskon Sekarang',
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
                    Icon(
                      LineAwesomeIcons.calendar,
                      size: 13,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Until 29 Februari')
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
