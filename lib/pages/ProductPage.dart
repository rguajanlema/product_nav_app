import 'package:flutter/material.dart';
import 'package:product_nav_app/pages/Product.dart';
import 'package:product_nav_app/pages/ratingBox.dart';

class ProductPage extends StatelessWidget{

  final Product item;

  ProductPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name),),
      body: Center(
        child: Container(
          padding:EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset("assets/appimages/"+item.image),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(item.name, style: TextStyle(fontWeight: FontWeight.bold),),
                        Text(item.description),
                        Text("Price: "+item.price.toString()),
                        RatingBox(),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

}