import 'package:camera/camera.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flipkart/controller/category_controller.dart';
import 'package:flipkart/view/base/screens/home_screen/widget/camera_screen.dart';
import 'package:flipkart/view/base/screens/home_screen/widget/category_item.dart';
import 'package:flipkart/view/base/screens/home_screen/widget/category_item_discount.dart';
import 'package:flipkart/view/base/screens/home_screen/widget/category_suggested.dart';
import 'package:flipkart/view/base/screens/home_screen/widget/category_view.dart';
import 'package:flipkart/view/base/screens/home_screen/widget/product_view/product_screen.dart';
import 'package:flipkart/view/base/screens/home_screen/widget/sponsored_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import '../../../../data/model/body/response/base/category_item_discount_model.dart';
import '../../../../data/model/body/response/base/category_item_model.dart';
import '../../../../data/model/body/response/base/category_model.dart';
import '../../../../data/model/body/response/base/category_product.dart';
import '../../../../data/model/body/response/base/category_suggested_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController? _scrollController;
  bool lastStatus = true;
  double height = 200;

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      setState(() {
        lastStatus = _isShrink;
      });
    }
  }

  bool get _isShrink {
    return _scrollController != null &&
        _scrollController!.hasClients &&
        _scrollController!.offset > (height - kToolbarHeight);
  }

  CategoryController categoryController = Get.find<CategoryController>();
  List<CategoryModel> categoryList = [];
  List<CategoryItemModel> categoryItemList = [];
  List<CategoryModelItemDiscount> categoryDataModelItemDiscountList = [];
  List<CategoryModelSuggested> categoryModelSuggestedList = [];
  List<CategoryProductModel> categoryDataProductList = [];

  @override
  void initState() {
    categoryList = categoryController.getCategoryList();
    categoryItemList = categoryController.getCategoryItemList();
    categoryDataModelItemDiscountList =
        categoryController.getCategoryDataModelItemDiscountList();
    categoryModelSuggestedList =
        categoryController.getCategoryModelSuggestedList();
    _scrollController = ScrollController()..addListener(_scrollListener);

    super.initState();
  }

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
                elevation: 0,
                pinned: true,
                expandedHeight: 170,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  title: _isShrink
                      ? SizedBox(
                          width: Get.width / 1.3,
                          height: 50,
                          child: const TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.grey),
                                ),
                                hintText: 'Search for products',
                                prefixIcon: Icon(
                                  Icons.mic,
                                  color: Colors.grey,
                                ),
                                suffixIcon: Icon(
                                  Icons.camera_alt_rounded,
                                  color: Colors.grey,
                                ),
                                suffix: Icon(
                                  Icons.search_off_outlined,
                                  color: Colors.grey,
                                )),
                          ),
                        )
                      : null,
                  background: SafeArea(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    const TextSpan(
                                        text: "Flipkart",
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blueAccent)),
                                    WidgetSpan(
                                        child: Image.asset(
                                      "assets/images/img_54.png",
                                      height: 30,
                                      width: 60,
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Brand Mall",
                                style: TextStyle(
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              children: [
                                SizedBox(
                                  child: FlutterSwitch(
                                    activeColor: const Color(0x18ffffff),
                                    activeTextColor: Colors.black,
                                    activeToggleColor: Colors.blueAccent,
                                    width: Get.width / 7,
                                    height: 30.0,
                                    valueFontSize: 15.0,
                                    toggleSize: 15.0,
                                    value: status,
                                    borderRadius: 20.0,
                                    showOnOff: true,
                                    onToggle: (val) {
                                      setState(() {
                                        status = val;
                                      });
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: Get.width / 2 + 100,
                                  height: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.grey),
                                        ),
                                        focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.grey),
                                        ),
                                        hintText: 'Search for products',
                                        prefixIcon: const Icon(
                                          Icons.mic,
                                          color: Colors.grey,
                                        ),
                                        suffixIcon: IconButton(
                                            onPressed: () async {
                                              final cameras =
                                                  await availableCameras();
                                              Get.to(() => CameraExampleHome(
                                                  cameras: cameras));
                                            },
                                            icon: const Icon(
                                              Icons.camera_alt_rounded,
                                              color: Colors.grey,
                                            )),
                                        suffix: const Icon(
                                          Icons.search_off_outlined,
                                          color: Colors.grey,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ];
          },
          body: CustomScrollView(slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  const SizedBox(
                    height: 10,
                  ),
                  CarouselSlider(
                    items: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/img_26.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/img_47.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/img_45.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/img_46.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/img_48.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 200.0,
                      autoPlay: true,
                      enlargeCenterPage: false,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      viewportFraction: 1.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 110,
                    child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoryView(categoryModel: categoryList[index]);
                      },
                      itemCount: categoryList.length,
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Discount",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 3,
                            crossAxisSpacing: 3,
                            crossAxisCount: 3,
                            childAspectRatio: 1.2),
                    itemBuilder: (context, index) {
                      return CategoryItem(
                          categoryItemModel: categoryItemList[index]);
                    },
                    itemCount: categoryItemList.length,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Recently Viewed Stores",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 130,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Card(
                                color: const Color(0xffffffff),
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/img_20.png",
                                        height: 68, width: 80),
                                    const Divider(
                                      thickness: 1,
                                      color: Colors.black12,
                                      height: 0,
                                      endIndent: 1,
                                      indent: 1,
                                    ),
                                    const Text(
                                      "Books",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Card(
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/img_21.png",
                                        height: 68, width: 80),
                                    const Divider(
                                      thickness: 1,
                                      color: Colors.black12,
                                      height: 0,
                                      endIndent: 1,
                                      indent: 1,
                                    ),
                                    const Text(
                                      "Dress",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Card(
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/img_22.png",
                                        height: 68, width: 80),
                                    const Divider(
                                      thickness: 1,
                                      color: Colors.black12,
                                      height: 0,
                                      endIndent: 1,
                                      indent: 1,
                                    ),
                                    const Text("Tops")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Sponsored",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black12,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: Get.width / 3.5,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/img_50.png",
                                    width: Get.width / 4.8,
                                    fit: BoxFit.fitWidth,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text("Women's Shirts"),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "From Rs499",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: Get.width / 3.5,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/img_51.png",
                                    width: Get.width / 4.8,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text("Watch"),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "20-30% Off",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: Get.width / 3.5,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/img_52.png",
                                    width: Get.width / 4.8,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text("T-shirt"),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "30-40% Off",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width / 3.5,
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/img_29.png",
                                width: Get.width / 4.8,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text("Men's Shoes"),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "From Rs499",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: Get.width / 3.5,
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/img_27.png",
                                width: Get.width / 4.8,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text("Men's Shoes"),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "From Rs499",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: Get.width / 3.5,
                        child: Card(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/img_28.png",
                                width: Get.width / 4.8,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text("Footwear"),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "30-40% Off",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Items Back in Stock",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          Get.to(const ProductScreen());
                        },
                        child: Row(
                          children: const [
                            Text(
                              'View All',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Image.asset(
                            "assets/images/img_21.png",
                            height: 100,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Text("Lady Stark Women Maxi Pink Dress"),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "1,299",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                  Text(
                                    "  Rs493",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "    62% off",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
                                  ),
                                ],
                              ),
                              const Divider(
                                thickness: 1,
                                color: Colors.black12,
                              ),
                            ],
                          ),
                        );
                      }),
                  const Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  SizedBox(
                    height: 80,
                    width: 500,
                    child: Image.asset(
                      "assets/images/img_32.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    color: const Color(0xd5a7c3da),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Discounts for You",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            ClipOval(
                              child: Material(
                                color: Colors.blueAccent,
                                child: InkWell(
                                  splashColor: Colors.red,
                                  onTap: () {
                                    Get.to(const ProductScreen());
                                  },
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
                        GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 4,
                                  crossAxisSpacing: 4,
                                  crossAxisCount: 2,
                                  childAspectRatio: 1.2),
                          itemBuilder: (context, index) {
                            return CategoryItemDiscount(
                                categoryModelItemDiscount:
                                    categoryDataModelItemDiscountList[index]);
                          },
                          itemCount: categoryDataModelItemDiscountList.length,
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(18.0),
                        //   child: GridView.builder(
                        //     shrinkWrap: true,
                        //     physics: const ScrollPhysics(),
                        //     gridDelegate:
                        //         const SliverGridDelegateWithFixedCrossAxisCount(
                        //             mainAxisSpacing: 3,
                        //             crossAxisSpacing: 10,
                        //             crossAxisCount: 2,
                        //             childAspectRatio: 1.2),
                        //     itemBuilder: (context, index) {
                        //       return Column(
                        //         children: [
                        //           Container(
                        //             height: 150,
                        //             width: 190,
                        //             color: Colors.white,
                        //             child: Column(
                        //               children: [
                        //                 Image.network(
                        //                   "https://media.istockphoto.com/id/1273305991/photo/feeling-bored-technology-can-take-care-of-that.jpg?s=1024x1024&w=is&k=20&c=QYiylfO1vac0w1o1O8pr5K_RDTpQYjN_KjqvVQNODZI=",
                        //                   fit: BoxFit.fitWidth,
                        //                   height: 100,
                        //                   width: 190,
                        //                 ),
                        //                 Padding(
                        //                   padding: const EdgeInsets.all(5.0),
                        //                   child: Column(
                        //                     crossAxisAlignment:
                        //                         CrossAxisAlignment.start,
                        //                     children: [
                        //                       Text(
                        //                         "1 Month Subscription",
                        //                         style: TextStyle(
                        //                             color: Colors.grey[700]),
                        //                       ),
                        //                       Row(
                        //                         children: [
                        //                           const Text(
                        //                             "From",
                        //                             style: TextStyle(
                        //                               fontWeight:
                        //                                   FontWeight.bold,
                        //                             ),
                        //                           ),
                        //                           const SizedBox(
                        //                             width: 5,
                        //                           ),
                        //                           Image.asset(
                        //                             "assets/images/coins.png",
                        //                             height: 10,
                        //                             width: 10,
                        //                           ),
                        //                           const SizedBox(
                        //                             width: 5,
                        //                           ),
                        //                           const Text(
                        //                             "1",
                        //                             style: TextStyle(
                        //                               fontWeight:
                        //                                   FontWeight.bold,
                        //                             ),
                        //                           ),
                        //                         ],
                        //                       )
                        //                     ],
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ],
                        //       );
                        //     },
                        //     itemCount: 4,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Suggested for You",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          ClipOval(
                            child: Material(
                              color: Colors.blueAccent,
                              // Button color
                              child: InkWell(
                                splashColor: Colors.red,
                                // Splash color
                                onTap: () {
                                  Get.to(const ProductScreen());
                                },
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
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 5,
                                crossAxisSpacing: 5,
                                crossAxisCount: 3,
                                childAspectRatio: 1.1),
                        itemBuilder: (context, index) {
                          return CategorySuggested(
                              categoryModelSuggested:
                                  categoryModelSuggestedList[index]);
                        },
                        itemCount: categoryModelSuggestedList.length,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Sponsored Product",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SponsoredProductScreen(),
                    ],
                  )
                ]),
              ),
            ),
          ]),
        ));
  }
}
