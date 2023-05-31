import 'package:carousel_slider/carousel_slider.dart';
import 'package:flipkart/view/base/screens/home_screen/widget/supercoins_view/pizza_offers_screen.dart';
import 'package:flipkart/view/base/screens/home_screen/widget/supercoins_view/watch_offers_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../data/dummy_data/category_data_list.dart';
import '../../../shops_screen/widget/category_flipkart_screen.dart';
import 'mobile_offers_screen.dart';
import 'music_subscriptions_screen.dart';

List<String> images = [
  "https://cdn0.desidime.com/attachments/photos/801530/original/Screenshot_2022-09-04_at_11.00.17_AM-min.png?1662269820",
  "https://d8it4huxumps7.cloudfront.net/uploads/images/festival/banner/6299a779ba698_1920560_-_landing_page_banner_1.png?d=1920x396",
  "https://i.gadgets360cdn.com/large/flipkart_big_billion_days_2022_sale_tv_appliances_1663936508259.jpg?downsize=950:*",
  "https://i0.wp.com/s3.ap-south-1.amazonaws.com/img.paisawapas/images/2021/09/30025008/flipkart-bbd-sale.jpg?ssl=1",
];

class SuperCoinsScreen extends StatefulWidget {
  const SuperCoinsScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SuperCoinsScreen> createState() => _SuperCoinsScreenState();
}

class _SuperCoinsScreenState extends State<SuperCoinsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            title: const Text(
              "SuperCoins",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: const EdgeInsets.all(5),
                  height: 30,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blueAccent)),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.card_giftcard,
                        size: 15,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "46",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: const EdgeInsets.all(5),
                  height: 30,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blueAccent)),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/coins.png",
                        width: 10,
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
              ),
            ],

            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "All",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Use Coins",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Earn Coins",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ), // TabBar
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                            crossAxisCount: 4,
                            childAspectRatio: 0.8),
                    itemBuilder: (context, index) {
                      return FlipkartScreen(
                          categoryFlipkartModel:
                              categoryDataFlipkartList[index]);
                    },
                    itemCount: categoryDataFlipkartList.length,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                        aspectRatio: 18 / 7,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal),
                    items: images.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: Get.width,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 5.0,
                              ),
                              decoration: const BoxDecoration(),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  i,
                                  fit: BoxFit.fill,
                                ),
                              ));
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 70,
                    child: Image.network(
                      "https://d2r2ijn7njrktv.cloudfront.net/apnlive/uploads/2021/11/21161652/flipkart-sale.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 290,
                    width: 100,
                    child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Get.to(const OffersScreen());
                                  });
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  height: 265,
                                  width: 150,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Image.network(
                                        "https://staticimg.titan.co.in/Titan/Catalog/90137AP01_3.jpg?impolicy=pqlow&imwidth=150",
                                        fit: BoxFit.fitWidth,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text("Noise"),
                                          Text("20%off on select"),
                                          Text(
                                            "Noise Product",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: OutlinedButton(
                                            onPressed: () {},
                                            style: OutlinedButton.styleFrom(
                                              side: const BorderSide(
                                                  width: 1.0,
                                                  color: Colors.blue),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text("Use"),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Image.asset(
                                                  "assets/images/coins.png",
                                                  height: 10,
                                                  width: 10,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Text("20")
                                              ],
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          );
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: const Color(0xd5efb907),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Latest Video Entertainment Rewards",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
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
                        const SizedBox(
                          height: 5,
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 3,
                                  crossAxisSpacing: 10,
                                  crossAxisCount: 2,
                                  childAspectRatio: 1.2),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      Get.to(const MusicSubscriptionsScreen());
                                    });
                                  },
                                  child: Container(
                                    height: 150,
                                    width: 190,
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        Image.network(
                                          "https://axerosolutions.com/assets/Uploaded-CMS-Files/1c3bc747-fef3-4ce9-a3ae-dc94f44fbcb1.jpg",
                                          fit: BoxFit.fitWidth,
                                          height: 100,
                                          width: 190,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Wynk Music Subscriptions",
                                                style: TextStyle(
                                                    color: Colors.grey[700]),
                                              ),
                                              Row(
                                                children: [
                                                  const Text(
                                                    "From",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Image.asset(
                                                    "assets/images/coins.png",
                                                    height: 10,
                                                    width: 10,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  const Text(
                                                    "1",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                          itemCount: 4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                            crossAxisCount: 4,
                            childAspectRatio: 0.8),
                    itemBuilder: (context, index) {
                      return FlipkartScreen(
                          categoryFlipkartModel:
                              categoryDataFlipkartList[index]);
                    },
                    itemCount: categoryDataFlipkartList.length,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                        aspectRatio: 18 / 7,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal),
                    items: images.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: Get.width,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 5.0,
                              ),
                              decoration: const BoxDecoration(),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  i,
                                  fit: BoxFit.fill,
                                ),
                              ));
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 70,
                    child: Image.network(
                      "https://d8it4huxumps7.cloudfront.net/uploads/images/62ecc89e39a97_flipkart-wired-60.png?d=1366x396",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 310,
                    width: 100,
                    child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    Get.to(const PizzaOfferScreen());
                                  });
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(20),
                                  height: 265,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      Image.network(
                                        "https://rukminim1.flixcart.com/image/416/416/jx6fi"
                                        "q80/book/3/2/0/pizza-anyway-you-want-it-original-"
                                        "imafhzgwbchrfr7h.jpeg?q=70",
                                        fit: BoxFit.fitWidth,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text("Mobiles"),
                                          Text("20%off on select"),
                                          Text(
                                            "Mobiles Products",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: OutlinedButton(
                                            onPressed: () {},
                                            style: OutlinedButton.styleFrom(
                                              side: const BorderSide(
                                                  width: 1.0,
                                                  color: Colors.blue),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Text("Use"),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Image.asset(
                                                  "assets/images/coins.png",
                                                  height: 10,
                                                  width: 10,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Text("20")
                                              ],
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          );
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: const Color(0xd50dc1e5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Extra Up to 20% off",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            ClipOval(
                              child: Material(
                                color: Colors.white,
                                child: InkWell(
                                  splashColor: Colors.red,
                                  onTap: () {},
                                  child: const SizedBox(
                                    width: 36,
                                    height: 36,
                                    child: Icon(
                                      Icons.chevron_right,
                                      color: Colors.blueAccent,
                                      size: 34,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 3,
                                  crossAxisSpacing: 10,
                                  crossAxisCount: 2,
                                  childAspectRatio: 1.2),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  height: 150,
                                  width: 190,
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Image.network(
                                        "https://www.cervettiitalia.com/images/product/Kitchen-Accessories/2.jpg",
                                        fit: BoxFit.fitWidth,
                                        height: 100,
                                        width: 190,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Kitchen Fittings",
                                            style: TextStyle(
                                                color: Colors.grey[700]),
                                          ),
                                          const Text(
                                            "Up to 70% Off",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                          itemCount: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListView(shrinkWrap: true, children: [
                GridView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      crossAxisCount: 4,
                      childAspectRatio: 0.8),
                  itemBuilder: (context, index) {
                    return FlipkartScreen(
                        categoryFlipkartModel: categoryDataFlipkartList[index]);
                  },
                  itemCount: categoryDataFlipkartList.length,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                      aspectRatio: 18 / 7,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal),
                  items: images.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: Get.width,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 5.0,
                            ),
                            decoration: const BoxDecoration(),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(
                                i,
                                fit: BoxFit.fill,
                              ),
                            ));
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 70,
                  child: Image.network(
                    "https://d8it4huxumps7.cloudfront.net/uploads/images/62ecc89e39a97_flipkart-wired-60.png?d=1366x396",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 250,
                  width: 100,
                  child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Get.to(const MobileOfferScreen());
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.all(20),
                                height: 200,
                                width: 150,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Image.network(
                                      "https://image.cnbcfm.com/api/v1/image/105603246-154"
                                      "3626925912main.00_02_08_13.still002.jpg?v=1543626969&w"
                                      "=740&h=416&ffmt=webp&vtcrop=y",
                                      fit: BoxFit.fitWidth,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text("Noise"),
                                        Text("20%off on select"),
                                        Text(
                                          "Noise Product",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                            side: const BorderSide(
                                                width: 1.0, color: Colors.blue),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text("Use"),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Image.asset(
                                                "assets/images/coins.png",
                                                height: 10,
                                                width: 10,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Text("20")
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Earn Bonus SuperCoins",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                              Text(
                                "Extra coins on Every Purchase",
                                style: TextStyle(color: Colors.grey),
                              )
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
                                    color: Colors.white,
                                    size: 34,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                crossAxisCount: 3,
                                childAspectRatio: 0.8),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 150,
                                width: 210,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Image.network(
                                      "https://nypost.com/wp-content/uploads/sites/2/2022/01/iStock-1306156045.jpg?resize=744,496&quality=75&strip=all",
                                      fit: BoxFit.fitWidth,
                                      height: 80,
                                      width: 120,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text("Sunglasses"),
                                        Text(
                                          "Earn 100 Coins",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                        itemCount: 6,
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
