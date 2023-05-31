import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../data/model/body/response/base/category_shop.dart';

class ShoppingScreen extends StatelessWidget {
  final CategoryShopModel categoryShopModel;

  const ShoppingScreen({Key? key, required this.categoryShopModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: const Color(0x89CCECFF),
              borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Image.asset(
              categoryShopModel.image!,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          categoryShopModel.name!,
          style: const TextStyle(fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
