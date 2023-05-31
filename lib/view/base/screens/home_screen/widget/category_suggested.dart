import 'package:flutter/material.dart';

import '../../../../../data/model/body/response/base/category_suggested_model.dart';

class CategorySuggested extends StatelessWidget {
  final CategoryModelSuggested categoryModelSuggested;

  const CategorySuggested({Key? key, required this.categoryModelSuggested})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
      child: Column(
        children: [
          Image.asset(
            categoryModelSuggested.image!,
            height: 60,
            width: 80,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            categoryModelSuggested.name!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[900],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                categoryModelSuggested.price!,
              ),
              const SizedBox(
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                ],
              ),
              const Text("4.5")
            ],
          ),
        ],
      ),
    );
  }
}
