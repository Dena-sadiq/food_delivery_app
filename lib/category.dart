import 'package:flutter/material.dart';

class Category extends StatelessWidget {
   Category({Key? key}) : super(key: key);

  List<String> Images = [

    "images/diet.png",
    "images/appetizer.png",
    "images/hamburger.png",
    "images/pizza.png",
    "images/soda.png",
    "images/ramen.png",


  ];



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Row(
              children: const [
                Text("Choose Category",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "images/diet.png",
                  color: Colors.white.withOpacity(0.8),
                  colorBlendMode: BlendMode.modulate,
                  width: 50,
                ),
                Image.asset(
                  color: Colors.white.withOpacity(0.8),
                  colorBlendMode: BlendMode.modulate,
                  "images/appetizer.png",
                  width: 50,
                ),
                Image.asset(
                  color: Colors.white.withOpacity(0.8),
                  colorBlendMode: BlendMode.modulate,
                  "images/hamburger.png",
                  width: 45,
                ),
                Image.asset(
                  color: Colors.white.withOpacity(0.8),
                  colorBlendMode: BlendMode.modulate,
                  "images/pizza.png",
                  width: 48,
                ),
                Image.asset(
                  color: Colors.white.withOpacity(0.8),
                  colorBlendMode: BlendMode.modulate,
                  "images/soda.png",
                  width: 50,
                ),

                Image.asset(
                  color: Colors.white.withOpacity(0.8),
                  colorBlendMode: BlendMode.modulate,
                  "images/ramen.png",
                  width: 50,
                ),


              ],
            ),
            const SizedBox(height: 23),
            Row(
              children: const [
                Text("Main Course",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
