
import 'package:flutter/material.dart';
import 'package:food_delivery_app/category.dart';
import 'package:food_delivery_app/drop_down.dart';
import 'package:food_delivery_app/grid_view.dart';
import 'package:food_delivery_app/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage(  {Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFCEAD7),
                  Color(0xFFFCEAD7),
                  Colors.white,
                  Colors.white,
                  Colors.white
                ])),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 30),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Delivery',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          const DropdownButtonExample(),

                        ],
                      ),
                      const SizedBox(width: 170),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Image.asset(
                                'images/yellowGirl.jpg',
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0 , left: 23),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Search(),
                      Category()
                    ],
                  ),
                ),
                MyGridView(),
              ],

            ),
          ),

        )
    );
  }
}
