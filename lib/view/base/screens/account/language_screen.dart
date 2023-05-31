import 'package:flipkart/view/base/screens/account/account_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/model/body/response/base/category_shop.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  int selectedItem = 0;

  List<CategoryShopModel> languages = [
    CategoryShopModel(
      id: 1,
      title: "Hindi",
      images:
          "https://hindikiguide.com/wp-content/uploads/2018/07/India-Gate-in-Hindi.jpg?ezimgfmt=rs%3Adevice%2Frscb1-1",
    ),
    CategoryShopModel(
      id: 2,
      title: "English",
      images:
          "https://upload.wikimedia.org/wikipedia/commons/d/d3/Micklegate_Bar%2C_York%2C_UK_-_panoramio_%28103%29.jpg",
    ),
    CategoryShopModel(
      id: 3,
      title: "Marathi",
      images:
          "https://upload.wikimedia.org/wikipedia/commons/9/94/Gate_of_the_BCR_Headquarters_Building_%28Bucharest%2C_Romania%29.jpg",
    ),
    CategoryShopModel(
      id: 5,
      title: "Tamil",
      images:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-4RH8kvy82QtAT2idJqw0VKd49RKCfxnfgwdAnCl3KQ&s",
    ),
    CategoryShopModel(
      id: 6,
      title: "Telugu",
      images:
          "https://upload.wikimedia.org/wikipedia/commons/0/0a/Entrance_gate_of_Telugu_Museum_on_Kailasagiri_%28May_2019%29.jpg",
    ),
    CategoryShopModel(
      id: 7,
      title: "Gujarati",
      images:
          "https://thumbs.dreamstime.com/z/royal-entrance-gate-lakshmi-vilas-palace-was-built-maharaja-sayajirao-gaekwad-rd-vadodara-baroda-gujarat-india-111022886.jpg",
    ),
    CategoryShopModel(
      id: 8,
      title: "Malayalam",
      images: "https://fwdlife.in/wp-content/uploads/2018/05/kuttanad1.jpg",
    ),
    CategoryShopModel(
      id: 9,
      title: "Panjabi",
      images:
          "https://www.revv.co.in/blogs/wp-content/uploads/2020/06/best-places-to-visit-in-Punjab.jpg",
    ),
    CategoryShopModel(
      id: 10,
      title: "Bengali",
      images:
          "https://www.tourmyindia.com/blog//wp-content/uploads/2016/04/Victoria-Memorial-Kolkata.jpg",
    ),
    CategoryShopModel(
      id: 11,
      title: "Kannada",
      images:
          "https://karnatakatourism.org/wp-content/uploads/2020/12/Gol-Gumbaz.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: InkWell(
        onTap: () {
          Get.to(() => const AccountScreen());
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.orange,
            boxShadow: [
              BoxShadow(
                offset: Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
          ),
          child: const Center(
            child: Text(
              "Continue",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        automaticallyImplyLeading: true,
        foregroundColor: Colors.white,
        title: const Text(
          "Choose Language",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          CategoryShopModel model = languages[index];
          return InkWell(
            onTap: () {
              setState(() {
                selectedItem = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                    color: selectedItem == index
                        ? Colors.blueAccent[200]!
                        : Colors.white),
                color: Colors.white,
              ),
              height: 70,
              width: Get.width,
              child: ListTile(
                leading: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: selectedItem == index
                          ? const Icon(
                              Icons.check,
                              size: 30.0,
                              color: Colors.white,
                            )
                          : const Icon(
                              Icons.check_box_outline_blank,
                              size: 30.0,
                              color: Colors.blue,
                            ),
                    )),
                title: Text(
                  model.title!,
                  style: const TextStyle(color: Colors.black),
                ),
                trailing: Image.network(
                  model.images!,
                  height: 50,
                  width: 50,
                ),
              ),
            ),
          );
        },
        itemCount: languages.length,
      ),
    );
  }
}
