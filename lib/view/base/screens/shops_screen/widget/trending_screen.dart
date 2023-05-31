import 'package:flutter/material.dart';
import '../../../../../data/model/body/response/base/category_trend.dart';

class TrendScreen extends StatelessWidget {
  final CategoryTrendModel categoryTrendModel;

  const TrendScreen({Key? key, required this.categoryTrendModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              categoryTrendModel.image!,
              fit: BoxFit.cover,
              height: 150,
              width: 180,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(5),
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    categoryTrendModel.name!,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    categoryTrendModel.title!,
                    style: const TextStyle(color: Colors.black, fontSize: 15.0),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
