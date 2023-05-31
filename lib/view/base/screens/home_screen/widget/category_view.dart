import 'package:flipkart/data/model/body/response/base/category_model.dart';
import 'package:flipkart/view/base/screens/home_screen/widget/supercoins_view/supercoins_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryView extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryView({Key? key, required this.categoryModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const SuperCoinsScreen());
      },
      child: SizedBox(
        width: Get.width / 4.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Image.asset(
                  categoryModel.image!,
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              categoryModel.name!,
              style: const TextStyle(fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
