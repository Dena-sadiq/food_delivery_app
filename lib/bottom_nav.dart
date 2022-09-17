
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/home_page.dart';


class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  HomePage(),
      bottomNavigationBar: ConvexAppBar(
        elevation: 0.5,
        activeColor:const Color(0xFFFF0000),
        backgroundColor: Colors.white,
        color:  Color(0xFF292B34),
        style: TabStyle.fixedCircle,
        items:const [
           TabItem(
             // activeIcon: FontAwesomeIcons.house,
               icon: FontAwesomeIcons.house
             ,
           ),
           TabItem(
               icon: FontAwesomeIcons.solidHeart
           ),
           TabItem(
               icon: FontAwesomeIcons.bagShopping
           ),
           TabItem(
               icon: FontAwesomeIcons.percent
           ),
           TabItem(

               icon: FontAwesomeIcons.solidUser
           ),

        ],
        initialActiveIndex: 1,
        // onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}