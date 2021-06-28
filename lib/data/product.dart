import 'package:gsg_tabbar/model/productModel.dart';

class MockData{
  MockData._();
  static final MockData mockData = MockData._();
List<productModel> product = <productModel>[
  
productModel(name: 'product 1',isfav: true,price: 200,imagePath: 'assets/images/product.jpg'),
productModel(name: 'product 2',isfav: true,price: 300,imagePath: 'assets/images/product.jpg'),
productModel(name: 'product 3',isfav: true,price: 400,imagePath: 'assets/images/product.jpg'),
productModel(name: 'product 4',isfav: true,price: 500,imagePath: 'assets/images/product.jpg'),
productModel(name: 'product 5',isfav: false,price: 800,imagePath: 'assets/images/product.jpg'),
    ];

  List<productModel> getProducts(){
    return product;
  }
  void updateProduct(String productName) {
    product.forEach((element) {
      if (element.name == productName) {
        element.isfav = !element.isfav;
      }
    });
  }}