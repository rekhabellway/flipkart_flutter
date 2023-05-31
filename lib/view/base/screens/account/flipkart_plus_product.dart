import 'package:flutter/material.dart';
import '../../../../../data/model/body/response/base/category_item_discount_model.dart';

class FlipkartPlusProduct extends StatelessWidget {
  final CategoryModelItemDiscount categoryModelItemDiscount;

  const FlipkartPlusProduct({Key? key, required this.categoryModelItemDiscount})
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
          Image.network(
            categoryModelItemDiscount.images!,
            height: 110,
            width: 110,
            fit: BoxFit.fitWidth,
          ),
          Text(
            categoryModelItemDiscount.name1!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[900],
            ),
          ),
          Text(
            categoryModelItemDiscount.title1!,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.green),
          ),
        ],
      ),
    ));
  }
}
