import 'package:flutter/material.dart';
import 'package:product_nav_app/pages/Product.dart';
import 'package:product_nav_app/pages/ProductBox.dart';
import 'package:product_nav_app/pages/ProductPage.dart';

class MyHomePage extends StatelessWidget{

  final String title;
  final items = Product.getProducts();

  MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
          return GestureDetector(
            child: ProductBox(item: items[index],),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductPage(item:items[index]),
                  ),
              );
            },
          );
        },
      ),
    );
  }

}