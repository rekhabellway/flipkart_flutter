import 'package:flipkart/data/model/body/response/base/category_flipkart.dart';
import 'package:flutter/cupertino.dart';

class FlipkartScreen extends StatelessWidget {
  final CategoryFlipkartModel categoryFlipkartModel;

  const FlipkartScreen({Key? key, required this.categoryFlipkartModel})
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
              color: categoryFlipkartModel.color!,
              borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Image.asset(
              categoryFlipkartModel.image!,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          categoryFlipkartModel.name!,
          style: const TextStyle(fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
