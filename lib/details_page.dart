import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/product.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xF2F88A3C),
                Color(0xFFFD3E3E),
              ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              color: Colors.grey,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(FontAwesomeIcons.chevronLeft)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: IconButton(
                  color: Colors.grey,
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.heart)),
            ),
          ],
        ),
        body: Column(
          children:  [
            Product(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("2 items" ,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      )
                  ),

                  Text("19.24\$" ,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  FloatingActionButton(
                      backgroundColor: Color(0xFF292B34),
                      onPressed: () {},
                     child:
                     Icon(FontAwesomeIcons.bagShopping)

                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
