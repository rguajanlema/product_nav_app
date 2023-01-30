import 'package:flutter/material.dart';
import 'package:product_nav_app/pages/myHomePage.dart';
import 'package:product_nav_app/pages/Product.dart';

void main() =>
  runApp( MyApp());


class MyApp extends StatelessWidget{
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(title: 'Product state demo home page'),
    );
  }

}