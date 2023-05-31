import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  Text(
                    "Notification(1)",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blueAccent, width: 1),
                    color: _isSelected ? const Color(0x89b4cde3) : Colors.white,
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _isSelected = true;
                      });
                    },
                    child: const Text(
                      "All",
                      style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.blueAccent, width: 1),
                      color:
                          _isSelected ? Colors.white : const Color(0x89b4cde3),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/offers.png",
                            height: 20,
                            width: 20,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              _isSelected = false;
                            });
                          },
                          child: const Text(
                            "Offers",
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        )
                      ],
                    )),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.black12,
            ),
            _isSelected
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      "assets/images/offers.png",
                                      height: 30,
                                      width: 30,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Atta, Rice, Oil..Up to 50% Off!",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "No min. order value! Avail Free Shipping",
                                          style: TextStyle(
                                              color: Colors.grey[400]),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              " on order value of Min. Rs600 Shop Now",
                                              style: TextStyle(
                                                  color: Colors.grey[400]),
                                            ),
                                            const Icon(
                                              Icons.chevron_right,
                                              color: Colors.grey,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      "assets/images/flip.png",
                                      height: 40,
                                      width: 40,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.black12,
                          ),
                          Container(
                            margin: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      "assets/images/offers.png",
                                      height: 30,
                                      width: 30,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Hurray! You're Eligible for Plus",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Join Flipkart Plus Now Get Free Shipping*",
                                          style: TextStyle(
                                              color: Colors.grey[400]),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "earnings & more for a year Join now Free",
                                              style: TextStyle(
                                                  color: Colors.grey[400]),
                                            ),
                                            const Icon(
                                              Icons.chevron_right,
                                              color: Colors.grey,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      "assets/images/flip.png",
                                      height: 40,
                                      width: 40,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    })
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      "assets/images/offers.png",
                                      height: 30,
                                      width: 30,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Hurray! You're Eligible for Plus",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Join Flipkart Plus Now Get Free Shipping*",
                                          style: TextStyle(
                                              color: Colors.grey[400]),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "earnings & more for a year Join now Free",
                                              style: TextStyle(
                                                  color: Colors.grey[400]),
                                            ),
                                            const Icon(
                                              Icons.chevron_right,
                                              color: Colors.grey,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      "assets/images/flip.png",
                                      height: 40,
                                      width: 40,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.black12,
                          ),
                        ],
                      );
                    }),
          ],
        ),
      ),
    );
  }
}
