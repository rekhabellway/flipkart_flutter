import 'package:flipkart/view/base/screens/shops_screen/widget/shoping_screen.dart';
import 'package:flipkart/view/base/screens/shops_screen/widget/trending_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../controller/category_controller.dart';
import '../../../../../data/dummy_data/category_data_list.dart';
import '../../../../../data/model/body/response/base/category_shop.dart';
import '../../../../../data/model/body/response/base/category_trend.dart';
import 'category_flipkart_screen.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  CategoryController categoryController = Get.find<CategoryController>();
  List<CategoryTrendModel> categoryDataTrendList = [];
  List<CategoryShopModel> categoryDataShopList = [];

  @override
  void initState() {
    categoryDataTrendList = categoryController.getCategoryTrendList();
    categoryDataShopList = categoryController.getCategoryShopList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "All Categories",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.mic),
              )),
        ],
      ),
      body: ListView(children: [
        GridView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 4,
              childAspectRatio: 0.8),
          itemBuilder: (context, index) {
            return ShoppingScreen(
                categoryShopModel: categoryDataShopList[index]);
          },
          itemCount: categoryDataShopList.length,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "More On Flipkart",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: Get.width / 2 + 25,
                child: const Divider(
                  endIndent: 0,
                  indent: 0,
                  color: Colors.black12,
                  thickness: 1,
                ),
              ),
            ],
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 5,
              crossAxisCount: 4,
              childAspectRatio: 0.8),
          itemBuilder: (context, index) {
            return FlipkartScreen(
                categoryFlipkartModel: categoryDataFlipkartList[index]);
          },
          itemCount: categoryDataFlipkartList.length,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Trending Stores",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: Get.width / 2 + 25,
                child: const Divider(
                  endIndent: 0,
                  indent: 0,
                  color: Colors.black12,
                  thickness: 1,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 2,
              crossAxisSpacing: 3,
              crossAxisCount: 2,
              childAspectRatio: 1.2),
          itemBuilder: (context, index) {
            return TrendScreen(
              categoryTrendModel: categoryDataTrendList[index],
            );
          },
          itemCount: categoryDataTrendList.length,
        )
      ]),
    );
  }
}
