import 'package:flipkart/view/base/screens/account/edit_profile.dart';
import 'package:flipkart/view/base/screens/account/my_address.dart';
import 'package:flipkart/view/base/screens/account/saved_cards_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'flipkart_plus.dart';
import 'language_screen.dart';
import 'notification_setting.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x67ffffff),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "+919399819186",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15),
                ),
                Container(
                  height: 25,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.blueAccent)),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/coins.png",
                        height: 20,
                        width: 20,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Text(
                        "46",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Explore",
                  style: TextStyle(color: Colors.grey[500], fontSize: 15),
                ),
                const SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "assets/images/flipkart.png",
                  height: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.chevron_right,
                  size: 15,
                  color: Colors.grey[500],
                )
              ],
            )
          ],
        ),
      ),
      body: ListView(children: [
        Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 40,
                    width: 170,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(5)),
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart,
                        color: Colors.blueAccent,
                      ),
                      label: const Text("Order         "),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 40,
                    width: 170,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(5)),
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.blueAccent,
                      ),
                      label: const Text("Wishlist          "),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 40,
                    width: 170,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(5)),
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.wallet_giftcard_rounded,
                        color: Colors.blueAccent,
                      ),
                      label: const Text("Coupons        "),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 40,
                    width: 170,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(5)),
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.headset_rounded,
                        color: Colors.blueAccent,
                      ),
                      label: const Text("Help Center    "),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/card.png",
                  height: 40,
                  width: 40,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Add/Verify your Email",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: Colors.pink,
                        )
                      ],
                    ),
                    Text(
                      "Get latest updates of your orders",
                      style: TextStyle(color: Colors.grey[500]),
                    )
                  ],
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Update",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      )),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Credit Options",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: const Icon(
                  Icons.payments_rounded,
                  color: Colors.blueAccent,
                ),
                title: const Text("Flipkart Axis Bank Credit Card"),
                subtitle: Text(
                  "Apply & enter world of unlimited benefits!",
                  style: TextStyle(color: Colors.grey[500]),
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.credit_card,
                  color: Colors.blueAccent,
                ),
                title: const Text("Flipkart Pay Later"),
                subtitle: Text(
                  "Complete application & get Rs.500* gift card",
                  style: TextStyle(color: Colors.grey[500]),
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(color: Color(0xff521c6b)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/car.png",
                height: 50,
                width: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Predict &Win Exciting Rewards",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(
                    "Car, iPhone & more",
                    style: TextStyle(color: Colors.grey[500]),
                  )
                ],
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.grey[500],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Account Settings",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const FlipkartPlus());
                },
                child: const ListTile(
                  leading: Icon(
                    Icons.plumbing_sharp,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    'Flipkart Plus',
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const EditProfile());
                },
                child: const ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    'Edit Profile',
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const SavedCardsScreen());
                },
                child: const ListTile(
                  leading: Icon(
                    Icons.wallet_giftcard,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    'Saved Cards & Wallet',
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const MyAddress());
                },
                child: const ListTile(
                  leading: Icon(
                    Icons.map,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    'Saved Addresses',
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const LanguageScreen());
                },
                child: const ListTile(
                  leading: Icon(
                    Icons.language_outlined,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    'Select Language ',
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => const NotificationSettings());
                },
                child: const ListTile(
                  leading: Icon(
                    Icons.notifications,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    'Notification Settings',
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "My Activity",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              const ListTile(
                leading: Icon(
                  Icons.edit,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  'Reviews',
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  'Questions & Answers',
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Earn with Flipkart",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              const ListTile(
                leading: Icon(
                  Icons.star_border_outlined,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  'Flipkart Creator Studio',
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.card_giftcard,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  'Sell on Flipkart',
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Feedback & Information",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              const ListTile(
                leading: Icon(
                  Icons.terminal,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  'Terms, Policies and Licenses',
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.help_center_sharp,
                  color: Colors.blueAccent,
                ),
                title: Text(
                  'Browse FAQs',
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 40,
          margin: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)]),
          child: Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Log out",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
