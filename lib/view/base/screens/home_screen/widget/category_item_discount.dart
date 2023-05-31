import 'package:flutter/material.dart';
import '../../../../../data/model/body/response/base/category_item_discount_model.dart';

class CategoryItemDiscount extends StatelessWidget {
  final CategoryModelItemDiscount categoryModelItemDiscount;

  const CategoryItemDiscount(
      {Key? key, required this.categoryModelItemDiscount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 150,
      width: 190,
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            categoryModelItemDiscount.image!,
            height: 110,
            width: 110,
            fit: BoxFit.fitWidth,
          ),
          Text(
            categoryModelItemDiscount.name!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[900],
            ),
          ),
          Text(
            categoryModelItemDiscount.title!,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[900]),
          ),
        ],
      ),
    ));
  }
}
