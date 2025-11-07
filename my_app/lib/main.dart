import 'package:flutter/material.dart';
//import 'package:my_app/pages/bakery.dart';
import 'package:my_app/pages/supBakery.dart';
//import 'package:my_app/pages/facebook.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      home: SupBakery(),
    );
  }
}

