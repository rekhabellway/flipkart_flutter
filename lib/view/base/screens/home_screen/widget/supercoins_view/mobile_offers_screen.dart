import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileOfferScreen extends StatelessWidget {
  const MobileOfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff191631),
        title: Text("Offer Details"),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.all(10),
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
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
              Text(
                "Claim now using ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18),
              ),
              SizedBox(
                width: 5,
              ),
              Image.asset(
                "assets/images/coins.png",
                color: Colors.yellow,
                height: 10,
                width: 10,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
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
          padding: EdgeInsets.all(20),
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
                        "https://image.cnbcfm.com/api/v1/image/105603246-154"
                        "3626925912main.00_02_08_13.still002.jpg?v=1543626969&w"
                        "=740&h=416&ffmt=webp&vtcrop=y",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("CLAIMS"),
                      Text(
                        "Extra 10% Off Smart Watch Upto",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
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
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "40",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  Icon(
                    Icons.mobile_screen_share_rounded,
                    color: Colors.grey,
                  )
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[500],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Max Uses :",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  Text(" 1 claim per user")
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[500],
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 80,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff7173ce)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(
                      "https://image.cnbcfm.com/api/v1/image/105603246-154"
                      "3626925912main.00_02_08_13.still002.jpg?v=1543626969&w"
                      "=740&h=416&ffmt=webp&vtcrop=y",
                      height: 50,
                      width: 50,
                    ),
                    Text(
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
                          color: Color(0xff424572),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
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
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "About the offer:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: Get.width,
                child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
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
                            children: [
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
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Key Terms & Conditions",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
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
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.black,
                                size: 6,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Discount application only on select"),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
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
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Read Terms and Conditions",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How to Use",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
