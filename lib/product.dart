import 'package:flutter/material.dart';
import 'package:food_delivery_app/increase_button.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  ProductState createState() => ProductState();
}

class ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          width: 500,
          height: 700,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text("Grilled Beef Steak with\nSauce ABC ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold)),

                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text("By Resto Parmato Bapo ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                        )),
                  ],
                ),



                const SizedBox(
                  height: 430,
                ),
                Row(
                  children: const [
                    Text("Description",
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
                  children: const [
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing\nand scrambled it to make a type specimen book.  \nit to make a type specimen book... ",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        )
                    ),
                  ],

                ),


              ],
            ),
          ),
        ),
        Positioned(
          left: 150,
          top: 120,
          child: SizedBox(
            width: 400,
            height: 400,
               child:  Image.asset("images/steak.png",
                  fit: BoxFit.cover,
                ),
          ),

        ),

         Positioned(
            right: 330,
            top:180,
            child: Container(
              height: 40,
              width: 80,
              child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.2,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(50.0), //<-- SEE HERE
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.star,
                          size: 22.0,
                          color: Colors.orangeAccent,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("4.9"),
                      ],
                    ),
                  ],
                )
              ),
            )
        ),

        const Positioned(
          right: 330,
          top:330,
          child: MyButton()
        ),


      ],
    );
  }
}
