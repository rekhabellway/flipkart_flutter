import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SavedCardsScreen extends StatelessWidget {
  const SavedCardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text(
            "My Cards & Wallet",
            style: TextStyle(fontStyle: FontStyle.italic),
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
        body: ListView(children: [
          Container(
            height: Get.height / 8,
            width: Get.width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Gift Cards",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Rs. 0",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Have you received a gift card?",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "ADD FLIPKART GIFT CARD",
                    style: TextStyle(
                        color: Colors.blueAccent, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ]),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            height: Get.height / 8,
            width: Get.width,
            decoration: const BoxDecoration(color: Colors.blueAccent),
            child: ListTile(
              leading: Image.asset(
                "assets/images/giftcards.png",
                height: 50,
                width: 50,
              ),
              title: const Text(
                'Gift Cards for all Occasions',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "See Options",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            height: Get.height / 8,
            width: Get.width,
            decoration: const BoxDecoration(color: Colors.blueAccent),
            child: ListTile(
              leading: Image.asset(
                "assets/images/card.png",
                height: 50,
                width: 50,
              ),
              title: const Text(
                'Flipkart Pay Later',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "Sign up & Get Rs. 100 Gift Card*",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            height: Get.height / 7,
            width: Get.width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(8),
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Saved Cards",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Save your Credt/Debit cards for faster payments. your cards are secure with us.",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            height: Get.height / 4.9,
            width: Get.width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(8),
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "UPI",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://zeevector.com/wp-content/uploads/Google-Pay-Logo-PNG.png",
                          height: 40,
                          width: 50,
                        ),
                        const Text(
                          "Google Pay UPI",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "9399819186@ybl",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.history,
                      color: Colors.grey,
                    ),
                    Text(
                      "View Transaction History",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.help,
                      color: Colors.grey,
                    ),
                    Text(
                      "Help",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          )
        ]));
  }
}
