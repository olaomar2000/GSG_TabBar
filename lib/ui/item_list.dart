import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_tabbar/data/product.dart';
import 'package:gsg_tabbar/model/productModel.dart';

class item extends StatefulWidget {
  final productModel product;
  const item({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  _itemState createState() => _itemState();
}

class _itemState extends State<item> {
  _itemState();

  @override
  Widget build(BuildContext context) {
  
    return Container(
      height: 100,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: ListTile(
        dense: true,
        leading: Image.network(
          widget.product.imagePath,
          fit: BoxFit.cover,
          width: 30,
          height: 30,
        ),
        title: Text(widget.product.name),
        subtitle: Row(
          children: [
            Text(widget.product.price.toString()),
            SizedBox(
              width: 12,
            ),
          ],
        ),
        trailing: Column(
          children: [
            widget.product.isfav
                ? IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 35,
                    ),
                    onPressed: () {
                      setState(() {
                        widget.product.isfav = !widget.product.isfav;
                        MockData.mockData.updateProduct(widget.product.name);
                      });
                    },
                  )
                : IconButton(
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                    onPressed: () {
                      setState(() {
                        widget.product.isfav = !widget.product.isfav;
                        MockData.mockData.updateProduct(widget.product.name);
                      });
                    },
                  ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
