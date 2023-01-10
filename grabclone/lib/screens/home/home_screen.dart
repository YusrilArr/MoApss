// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:grabclone/data_dummy/food_data.dart';
import 'package:grabclone/data_dummy/restaurant_data.dart';
import 'package:grabclone/screens/home/widgets/btn_main_menus.dart';
import 'package:grabclone/screens/home/widgets/btn_topup_walet_ovo.dart';
import 'package:grabclone/screens/home/widgets/food_list.dart';
import 'package:grabclone/screens/home/widgets/grab_sponsor.dart';
import 'package:grabclone/screens/home/widgets/offer_list.dart';
import 'package:grabclone/screens/home/widgets/ovo_money_points.dart';
import 'package:grabclone/screens/home/widgets/promo_list.dart';
import 'package:grabclone/screens/home/widgets/restaurant_list.dart';
import 'package:grabclone/screens/home/widgets/section_title.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xFF33c072),
        flexibleSpace: SafeArea(
          child: Container(
            margin: EdgeInsets.fromLTRB(15, 20, 15, 15),
            padding: EdgeInsets.fromLTRB(0, 0, 2, 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: TextField(
              maxLines: 1,
              textAlignVertical: TextAlignVertical.center,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                  hintText: "Search Here. . .",
                  prefixIcon: Icon(
                    LineAwesomeIcons.qrcode,
                    color: Colors.black45,
                  ),
                  border: InputBorder.none),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Ovo money and points
              OvoMoneyAndPoints(),

              //Button Top Up Wallet
              BtnTopUpWalletOVO(),

              //Btn Main Menu
              BtnMainMenus(),

              SizedBox(
                height: 20.0,
              ),

              Divider(
                color: Color(0xFFFAFAFA),
                thickness: 10,
              ),

              SizedBox(
                height: 10,
              ),

              GrabSponsor(
                imgSponsor:
                    'https://assets.grab.com/wp-content/uploads/sites/9/2019/04/26145653/Rev-National-Special-Omega-Promo-50-1950x700.jpg',
                sponsoredBy: 'GraBBY Food',
                titleSponsor: 'Diskon Semua menu 50%',
              ),

              SizedBox(
                height: 10,
              ),

              SectionTitle(
                title: 'Order again ',
              ),

              SizedBox(
                height: 15,
              ),

              FoodList(
                foodData: FoodData.mapFoodOrderAgain,
              ),

              SizedBox(
                height: 15,
              ),

              SectionTitle(
                title: 'Restaurants you may like ',
              ),

              SizedBox(
                height: 15,
              ),

              RestaurantList(
                restaurantData: RestaurantData.mapRestaurant,
              ),

              SizedBox(
                height: 15,
              ),

              GrabSponsor(
                imgSponsor:
                    'https://assets.grab.com/wp-content/uploads/sites/9/2021/06/02181757/bisalahversary_GE-1440x700.jpg',
                sponsoredBy: 'GraBBY Express',
                titleSponsor: 'Kirim kirim dengan Diskon s.d 40rb',
              ),

              SizedBox(
                height: 15,
              ),

              SectionTitle(
                title: 'Makan dan belanja pakai promo yuk ',
              ),

              SizedBox(
                height: 8,
              ),

              PromoList(),

              SizedBox(
                height: 25,
              ),

              SectionTitle(
                title: 'Offers may you like ',
              ),

              SizedBox(
                height: 15,
              ),

              OfferList(),

              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
