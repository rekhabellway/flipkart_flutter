import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAddress extends StatelessWidget {
  const MyAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "My Account",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'shopping',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'search',
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.all(10),
            child: Row(
              children: const [
                Icon(
                  Icons.add,
                  color: Colors.blueAccent,
                ),
                Text(
                  "Add a new address",
                  style: TextStyle(color: Colors.blueAccent),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "3 SAVED ADDRESSES",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                height: Get.height / 5,
                width: Get.width,
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [Icon(Icons.more_vert)]),
                    Row(
                      children: [
                        const Text("Rekha Jaiswal"),
                        const SizedBox(
                          width: 8,
                        ),
                        TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.grey[500])),
                            onPressed: () {},
                            child: const Text(
                              "HOME",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xffffffff),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Chirahula Colony Rewa, MP 486001"),
                        Text("9399819186")
                      ],
                    )
                  ],
                ),
              );
            },
            itemCount: 4,
          ),
        ],
      ),
    );
  }
}
