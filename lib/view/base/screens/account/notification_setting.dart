import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text("Push"),
              ),
              Tab(
                child: Text("In-App"),
              ),
              Tab(
                child: Text("SMS"),
              ),
              Tab(
                child: Text("Email"),
              ),
            ],
          ),
          title: const Text('Notification Preferences'),
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
        body: TabBarView(
          children: [
            Container(
              height: Get.height / 7,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get notifications from Flipkart on your mobile.",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("My Orders"),
                    subtitle: Text("Latest  updates on your orders"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("Reminders"),
                    subtitle: Text("Price Drops Back-in-stock Products, etc"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("New Offers"),
                    subtitle: Text("Tap Deals and more"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("My Flipkart Community"),
                    subtitle: Text("Profile updates, Newsletters, etc"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("Feedback and review"),
                    subtitle: Text("Rating and Reviews for your purchase"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: Get.height / 7,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get notifications from Flipkart on your mobile.",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("My Orders"),
                    subtitle: Text("Latest  updates on your orders"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("Reminders"),
                    subtitle: Text("Price Drops Back-in-stock Products, etc"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("New Offers"),
                    subtitle: Text("Tap Deals and more"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("My Flipkart Community"),
                    subtitle: Text("Profile updates, Newsletters, etc"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("Feedback and review"),
                    subtitle: Text("Rating and Reviews for your purchase"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: Get.height / 7,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get notifications from Flipkart on your mobile.",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("My Orders"),
                    subtitle: Text("Latest  updates on your orders"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("Reminders"),
                    subtitle: Text("Price Drops Back-in-stock Products, etc"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("New Offers"),
                    subtitle: Text("Tap Deals and more"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("My Flipkart Community"),
                    subtitle: Text("Profile updates, Newsletters, etc"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("Feedback and review"),
                    subtitle: Text("Rating and Reviews for your purchase"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: Get.height / 7,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get notifications from Flipkart on your mobile.",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("My Orders"),
                    subtitle: Text("Latest  updates on your orders"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("Reminders"),
                    subtitle: Text("Price Drops Back-in-stock Products, etc"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("New Offers"),
                    subtitle: Text("Tap Deals and more"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("My Flipkart Community"),
                    subtitle: Text("Profile updates, Newsletters, etc"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                    title: Text("Feedback and review"),
                    subtitle: Text("Rating and Reviews for your purchase"),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
