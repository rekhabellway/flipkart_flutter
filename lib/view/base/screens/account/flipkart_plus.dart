import 'package:flutter/material.dart';
import '../../../../data/dummy_data/category_data_list.dart';
import 'flipkart_plus_product.dart';

class FlipkartPlus extends StatelessWidget {
  const FlipkartPlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff550462),
        foregroundColor: Colors.white,
        automaticallyImplyLeading: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.help),
            tooltip: 'help',
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image.network(
                'https://images.indianexpress.com/2023/04/Flipkart.jpeg?w=640',
                fit: BoxFit.cover,
                height: 200,
              )),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xff550462),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const Text(
                  "Renew your Plus Membership",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Earn ",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Image.asset(
                      "assets/images/coins.png",
                      height: 10,
                      width: 10,
                    ),
                    const Text(
                      " 152 before Aug 03, 2023 to enjoy Plus benefits",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "24",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Image.asset(
                        "assets/images/coins.png",
                        height: 10,
                        width: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            color: const Color(0xd5c0b54d),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "PLUS LOOT",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Deals With Extra Discounts",
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontStyle: FontStyle.italic),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    ClipOval(
                      child: Material(
                        color: Colors.blueAccent,
                        child: InkWell(
                          splashColor: Colors.red,
                          onTap: () {},
                          child: const SizedBox(
                            width: 36,
                            height: 36,
                            child: Icon(
                              Icons.chevron_right,
                              size: 34,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      crossAxisCount: 2,
                      childAspectRatio: 1.2),
                  itemBuilder: (context, index) {
                    return FlipkartPlusProduct(
                        categoryModelItemDiscount:
                            categoryDataModelItemDiscountList[index]);
                  },
                  itemCount: categoryDataModelItemDiscountList.length,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
