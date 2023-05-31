import 'package:flipkart/data/model/body/response/base/category_product.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final CategoryProductModel categoryProductModel;

  const Product({Key? key, required this.categoryProductModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.all(8),
          height: 150,
          width: 190,
          child: Column(
            children: [
              Image.asset(
                categoryProductModel.image!,
                fit: BoxFit.fitWidth,
                height: 110,
                width: 100,
              ),
              Text(
                categoryProductModel.name!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[900],
                ),
              ),
              Text(
                categoryProductModel.title!,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              ),
            ],
          ),
        ));
  }
}
