import 'package:flutter/material.dart';
import 'package:food_delivery_app/bottom_nav.dart';
import 'package:food_delivery_app/drop_down.dart';
import 'package:food_delivery_app/grid_view.dart';
import 'package:food_delivery_app/search_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: BottomNav()
        );
  }
}
