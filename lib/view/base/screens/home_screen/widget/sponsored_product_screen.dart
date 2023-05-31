import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SponsoredProductScreen extends StatelessWidget {
  const SponsoredProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 380,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40),
              child: SizedBox(
                width: Get.width / 2 + 30,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/img_43.png",
                      ),
                      const Text("Tokyo Talkies Gown black Dress"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "1195",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey),
                          ),
                          Text(" Rs.1000"),
                          Text(
                            " 15% off",
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const VerticalDivider(
              color: Colors.black,
              thickness: 1,
              width: 1,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Center(
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/img_44.png",
                            height: 100,
                          ),
                          const Text("Black Gown"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "999",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey),
                              ),
                              Text(" Rs.799"),
                              Text(
                                " 15% off",
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width / 2 - 58,
                  child: const Divider(
                    endIndent: 0,
                    indent: 0,
                    color: Colors.black,
                    thickness: 1,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Center(
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/img_44.png",
                            height: 100,
                          ),
                          const Text("Black Gown"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "993",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.grey),
                              ),
                              Text(" Rs.900"),
                              Text(
                                " 15% off",
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
