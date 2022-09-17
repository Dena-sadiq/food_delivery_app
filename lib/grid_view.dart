import 'package:flutter/material.dart';
import 'package:food_delivery_app/details_page.dart';

class MyGridView extends StatelessWidget {
  List<Color> Colors = [
    const Color(0xFFEDF9E7),
    const Color(0xFFFBE9EE),
    const Color(0xFFE7EDF9),
    const Color(0xFFFCF0BD),
  ];
  List<String> Meals = ["Salad", "Steak", "Chicken", "Korean"];
  List<String> Images = [

    "images/salad.png",
    "images/steak.png",
    "images/chicken.png",
    "images/korean.png",

  ];


  MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 300.0, left: 20, right: 20),
      child: GridView.builder(
          // scrollDirection: Axis.vertical,
          itemCount: Colors.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 10 / 12,
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 15.0),
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(30.0),
              ), // borderRadiusGeometry borderRadius = BorderRadius.zero
              child: Stack(
                  children: [
                Container(color: Colors[index]),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(Meals[index] , style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),),
                    ],
                  ),
                ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Details()));
                      },
                      child: Stack(
                          children:[
                            Positioned(
                                left: 20,
                                top: 40,
                              child: SizedBox(
                                width: 250,
                                height: 250,
                                child: Image.asset(Images[index],
                                  fit: BoxFit.cover,                            ),
                            ),





                          //
                          //   SizedBox(
                          // width: 400,
                          // height: 400,
                          //
                          // ),
                        ),
              ]
                      ),
                    )
              ]
              ),
            );
          }),
    );
  }
}
