import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_tabbar/data/product.dart';
import 'package:gsg_tabbar/model/productModel.dart';

import 'item_list.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _sliderItem(),
                      _sliderItem(),
                      _sliderItem(),
                      _sliderItem(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Text(
                    "All Products ",
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: MockData.mockData
                      .getProducts()
                      .map((e) => item(
                            product: productModel(
                                imagePath: e.imagePath,
                                name: e.name,
                                price: e.price,
                                isfav: e.isfav),
                          ))
                      .toList(),
                )
              ]),
        ),
      ),
    );
  }
}

Widget _sliderItem() {
  return Container(
    alignment: Alignment.center,
    width: 200,
    height: 200,
    margin: EdgeInsets.all(20),
    padding: EdgeInsets.all(20),
    child: Text("Products"),
    decoration: BoxDecoration(
        image: DecorationImage(
      image: AssetImage('assets/images/product.jpg'),
      fit: BoxFit.fill,
    )),
  );
}
