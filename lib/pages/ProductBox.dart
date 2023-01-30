import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_nav_app/pages/ratingBox.dart';

import 'Product.dart';

class ProductBox extends StatelessWidget{
  ProductBox({Key? key, required this.item}):super(key: key);

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/appimages/"+item.image),
            Expanded(child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(item.name, style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(item.description),
                  Text("Price: " + item.price.toString()),
                  RatingBox(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}