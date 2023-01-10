// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class OvoMoneyAndPoints extends StatefulWidget {
  const OvoMoneyAndPoints({super.key});

  @override
  State<OvoMoneyAndPoints> createState() => _OvoMoneyAndPointsState();
}

class _OvoMoneyAndPointsState extends State<OvoMoneyAndPoints> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //OVO Money
        Expanded(
          child: InkWell(
            onTap: () {
              print('Ovo Money');
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xFFEBEBEB),
                  width: 2.5,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.black12,
                          width: 2.5,
                        )),
                    child: Image.asset(
                      'images/ovo-logo.png',
                      width: 21,
                      height: 21,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Transform.translate(
                            offset: const Offset(2, -4),
                            child: Text(
                              'Rp',
                              textScaleFactor: 0.7,
                              style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        TextSpan(
                            text: '12.000',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ))
                      ],
                    ),
                  ),
                  Icon(
                    LineAwesomeIcons.angle_right,
                    size: 16,
                    color: Colors.black26,
                  )
                ],
              ),
            ),
          ),
        ),

        //Ovo Points
        Expanded(
          child: InkWell(
            onTap: () {
              print('Ovo Points');
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Color(0xFFEBEBEB),
                    width: 2.5,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Image.asset(
                      'icons/ic-ovo-point.png',
                      width: 15,
                      height: 15,
                    ),
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.black12,
                          width: 2.5,
                        )),
                  ),

                  //Points
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: '127',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: 'Points',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      )
                    ]),
                  ),

                  Icon(
                    LineAwesomeIcons.angle_right,
                    size: 16,
                    color: Colors.black26,
                  )
                ],
              ),
            ),
          ),
        ),

        //
      ],
    );
  }
}
