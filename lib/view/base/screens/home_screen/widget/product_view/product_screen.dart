import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flipkart/view/base/screens/home_screen/widget/product_view/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../controller/category_controller.dart';
import '../../../../../../data/model/body/response/base/category_product.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  CategoryController categoryController = Get.find<CategoryController>();
  List<CategoryProductModel> categoryProductList = [];

  @override
  void initState() {
    categoryProductList = categoryController.getCategoryDataProductList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            elevation: 0,
            title: const Text("All Offers"),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ), //IconButton
              IconButton(
                icon: const Icon(Icons.mic),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.camera_enhance),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
              ), //IconButton
            ]),
        body: ListView(shrinkWrap: true, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Discounts for you ( 36 Results)",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('products').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                return GridView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                      crossAxisCount: 2,
                      childAspectRatio: 1.2),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(8),
                      height: 150,
                      width: 190,
                      child: Column(
                        children: [
                          Image.network(
                            streamSnapshot.data!.docs[index]["image"] ?? "",
                            fit: BoxFit.fitWidth,
                            height: 110,
                            width: 100,
                          ),
                          Text(
                            streamSnapshot.data!.docs[index]["name"],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[900],
                            ),
                          ),
                          Text(
                            streamSnapshot.data!.docs[index]["brand_name"],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: streamSnapshot.data!.docs.length,
                );
              })
        ]));
  }
}
