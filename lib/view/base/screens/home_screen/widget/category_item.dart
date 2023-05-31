import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../data/model/body/response/base/category_item_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryItemModel categoryItemModel;

  const CategoryItem({Key? key, required this.categoryItemModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Stack(
        children: <Widget>[
          Card(
            color: Colors.white,
            child: Column(
              children: [
                Image.asset(
                  categoryItemModel.image!,
                  height: 60,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Text(
                  categoryItemModel.name!,
                ),
                Text(
                  categoryItemModel.price!,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.only(left: 8, bottom: 1, top: 1),
              height: 20,
              decoration: const BoxDecoration(
                color: Color(0x89DDEFDA),
              ),
              child: Column(
                children: [
                  Text(
                    categoryItemModel.offer!,
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
