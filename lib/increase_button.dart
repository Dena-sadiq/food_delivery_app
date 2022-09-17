import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


 class MyButton extends StatefulWidget {
   const MyButton({Key? key}) : super(key: key);

   @override
   _MyButtonState createState() => _MyButtonState();
 }

 class _MyButtonState extends State<MyButton> {
   @override
   Widget build(BuildContext context) {
     return Container(
       child: Column(
         children: [
           FloatingActionButton(
             heroTag: "btn1",
             backgroundColor: const Color(0xFF292B34),
               onPressed: () {},
               child:
               const Icon(FontAwesomeIcons.plus),


           ),
           const SizedBox(
             height: 5,
           ),
           FloatingActionButton(
             heroTag: "btn2",
             backgroundColor: const Color(0xFF292B34),
             onPressed: () {},
             child:
             const Icon(FontAwesomeIcons.minus),


           ),
         ],
       ),
     );
   }
 }
