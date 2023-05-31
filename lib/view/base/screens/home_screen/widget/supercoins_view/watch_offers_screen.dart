import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff191631),
        title: const Text("Offer Details"),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.all(10),
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xfff1890e),
            boxShadow: [
              BoxShadow(
                offset: Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
              ), //BoxShadow
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Claim now using ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18),
              ),
              const SizedBox(
                width: 5,
              ),
              Image.asset(
                "assets/images/coins.png",
                color: Colors.yellow,
                height: 10,
                width: 10,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "40",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18),
              )
            ],
          ),
        ),
      ),
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Image border
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(48), // Image radius
                      child: Image.network(
                        "https://staticimg.titan.co.in/Titan/Catalog/90137AP01_3.jpg?impolicy=pqlow&imwidth=150",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("CLAIMS"),
                      const Text(
                        "Extra 10% Off Smart Watch Upto",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Rs. 100",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/coins.png",
                            height: 10,
                            width: 10,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "40",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  const Icon(
                    Icons.mobile_screen_share_rounded,
                    color: Colors.grey,
                  )
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[500],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Max Uses :",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const Text(" 1 claim per user")
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[500],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 80,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff7173ce)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(
                      "https://staticimg.titan.co.in/Titan/Catalog/90137AP01_3.jpg?impolicy=pqlow&imwidth=150",
                      height: 50,
                      width: 50,
                    ),
                    const Text(
                      "View all products on offer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    Material(
                      type: MaterialType.transparency,
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff424572),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.chevron_right,
                              size: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "About the offer:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: Get.width,
                child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 1,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.circle,
                                color: Colors.black,
                                size: 6,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Extra 10% Off Smart watch Upto Rs. 100")
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.circle,
                                color: Colors.black,
                                size: 6,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Shop Now!")
                            ],
                          ),
                        ],
                      );
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Key Terms & Conditions",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 110,
                width: Get.width,
                child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.circle,
                                color: Colors.black,
                                size: 6,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Discount application only on select"),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.circle,
                                color: Colors.black,
                                size: 6,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("There will be no refunds of SuperCoins"),
                            ],
                          ),
                        ],
                      );
                    }),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Read Terms and Conditions",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "How to Use",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.circle,
                        color: Colors.black,
                        size: 6,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Coupon will be auto-applied to the final price")
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.black,
                        size: 6,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Coupon will be auto-applied to the final price")
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
