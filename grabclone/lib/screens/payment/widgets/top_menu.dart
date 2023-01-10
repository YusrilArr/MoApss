// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'images/pic-bg-ovocash.png',
          fit: BoxFit.fill,
          width: double.infinity,
          height: 250,
        ),
        Container(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                'Payment',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'OVO Cash',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(0, -15),
                        child: Text(
                          'Rp',
                          textScaleFactor:
                              1, //memperkecil ukuran, semakin besar parmater, '1' berarti ukuran -50% dari default fontsize
                          style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TextSpan(
                      text: '120.000.000',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Image.asset(
                      'icons/ic-ovo-point.png',
                      width: 10,
                      height: 10,
                    ),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.green,
                        width: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('127 OVO Points'),
                  SizedBox(
                    height: 5,
                  ),
                  Icon(
                    LineAwesomeIcons.angle_right,
                    size: 14,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
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
                  children: [
                    MenuItem(),
                    TopUpBtn(),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Stack(
          children: [
            Icon(
              LineAwesomeIcons.mobile_phone,
              size: 55,
            ),
            Positioned(
              //insert icon didalam icon
              bottom: 0,
              left: 0,
              top: 0,
              right: 0,
              child: Icon(
                LineAwesomeIcons.dollar_sign,
                color: Colors.green,
                size: 14,
              ),
            ),
            Positioned(
              bottom: 0,
              top: 0,
              right: 4,
              child: Icon(
                LineAwesomeIcons.arrow_right,
                color: Colors.green,
                size: 20,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Pay',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        )
      ],
    ));
  }
}

class TopUpBtn extends StatelessWidget {
  const TopUpBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Stack(
          children: [
            Icon(
              LineAwesomeIcons.wallet,
              size: 55,
            ),
            Positioned(
              //insert icon didalam icon
              bottom: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(
                  LineAwesomeIcons.plus,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Top Up',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        )
      ],
    ));
  }
}
