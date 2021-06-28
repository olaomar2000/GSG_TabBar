import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_tabbar/data/product.dart';
import 'package:gsg_tabbar/model/productModel.dart';

import 'item_list.dart';

class fav extends StatefulWidget {
  @override
  _favState createState() => _favState();
}

class _favState extends State<fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: MockData.mockData.getProducts().where((element) {
            return element.isfav == true;
          }).map((e) {
            return item(product: productModel(
                    imagePath: e.imagePath,
                    name: e.name,
                    price: e.price,
                    isfav: e.isfav),
              );
          }).toList(),
        ),
      ),
    );
  }
}
