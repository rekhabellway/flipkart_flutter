import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool _checkbox = false;
  bool _checkbox1 = false;
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

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0x67ffffff),
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.white,
                  elevation: 0,
                  pinned: true,
                  expandedHeight: 200,
                  flexibleSpace: FlexibleSpaceBar(
                    title: _isShrink
                        ? Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: CheckboxListTile(
                              side: const BorderSide(style: BorderStyle.solid),
                              checkColor: Colors.blueAccent,
                              value: _checkbox1,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool? value) {
                                setState(() {
                                  _checkbox1 = value!;
                                });
                              },
                              title: const Text("11/25 items selected"),
                            ),
                          )
                        : null,
                    background: SafeArea(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text("My Cart",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "  Deliver to: ABC ",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            "HOME",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                backgroundColor:
                                                    Color(0x8ffffff)),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Text("Indore Madhya Pradesh"),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        width: 1.0, color: Colors.blue),
                                  ),
                                  child: const Text('Change'),
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                          CheckboxListTile(
                            side: const BorderSide(style: BorderStyle.solid),
                            checkColor: Colors.blueAccent,
                            value: _checkbox,
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (bool? value) {
                              setState(() {
                                _checkbox = value!;
                              });
                            },
                            title: const Text("11/25 items selected"),
                          ),
                        ],
                      ),
                    ),
                  ))
            ];
          },
          body: CustomScrollView(slivers: <Widget>[
            SliverToBoxAdapter(
                child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/img_43.png",
                                height: 80,
                              ),
                              OutlinedButton.icon(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      width: 1.0, color: Colors.black),
                                ),
                                label: const Text(
                                  "Qyt:1",
                                  style: TextStyle(color: Colors.black),
                                ),
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Gown"),
                          const Text("Size: 30"),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.green,
                              ),
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.green,
                              ),
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.green,
                              ),
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Text("(22227)"),
                              const SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                "assets/images/flipkart.png",
                                height: 40,
                                width: 40,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "62% off",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Rs.1299",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Rs.495",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text("Delivery by Fri May 12 |"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Free Delivery",
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Rs. 495",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          side:
                              const BorderSide(width: 1.0, color: Colors.grey),
                        ),
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.grey,
                        ),
                        label: const Text(
                          "Remove",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          side:
                              const BorderSide(width: 1.0, color: Colors.grey),
                        ),
                        icon: const Icon(
                          Icons.save,
                          color: Colors.grey,
                        ),
                        label: const Text(
                          "Save for later",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          side:
                              const BorderSide(width: 1.0, color: Colors.grey),
                        ),
                        icon: const Icon(
                          Icons.event_busy,
                          color: Colors.grey,
                        ),
                        label: const Text(
                          "Buy this now",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
            SliverToBoxAdapter(
                child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/img_43.png",
                                height: 80,
                              ),
                              OutlinedButton.icon(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      width: 1.0, color: Colors.black),
                                ),
                                label: const Text(
                                  "Qyt:1",
                                  style: TextStyle(color: Colors.black),
                                ),
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Gown"),
                          const Text("Size: 30"),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.green,
                              ),
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.green,
                              ),
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.green,
                              ),
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Text("(22227)"),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                "assets/images/flipkart.png",
                                height: 40,
                                width: 40,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "62% off",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Rs.1299",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Rs.495",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text("Delivery by Fri May 12 |"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Free Delivery",
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Rs. 495",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          side:
                              const BorderSide(width: 1.0, color: Colors.grey),
                        ),
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.grey,
                        ),
                        label: const Text(
                          "Remove",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          side:
                              const BorderSide(width: 1.0, color: Colors.grey),
                        ),
                        icon: const Icon(
                          Icons.save,
                          color: Colors.grey,
                        ),
                        label: const Text(
                          "Save for later",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          side:
                              const BorderSide(width: 1.0, color: Colors.grey),
                        ),
                        icon: const Icon(
                          Icons.event_busy,
                          color: Colors.grey,
                        ),
                        label: const Text(
                          "Buy this now",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
            SliverToBoxAdapter(
                child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/img_43.png",
                                height: 80,
                              ),
                              OutlinedButton.icon(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      width: 1.0, color: Colors.black),
                                ),
                                label: const Text(
                                  "Qyt:1",
                                  style: TextStyle(color: Colors.black),
                                ),
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Gown"),
                          const Text("Size: 30"),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.green,
                              ),
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.green,
                              ),
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.green,
                              ),
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Text("(22227)"),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                "assets/images/flipkart.png",
                                height: 40,
                                width: 40,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "62% off",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Rs.1299",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Rs.495",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text("Delivery by Fri May 12 |"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Free Delivery",
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Rs. 495",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          side:
                              const BorderSide(width: 1.0, color: Colors.grey),
                        ),
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.grey,
                        ),
                        label: const Text(
                          "Remove",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          side:
                              const BorderSide(width: 1.0, color: Colors.grey),
                        ),
                        icon: const Icon(
                          Icons.save,
                          color: Colors.grey,
                        ),
                        label: const Text(
                          "Save for later",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          side:
                              const BorderSide(width: 1.0, color: Colors.grey),
                        ),
                        icon: const Icon(
                          Icons.event_busy,
                          color: Colors.grey,
                        ),
                        label: const Text(
                          "Buy this now",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
            SliverToBoxAdapter(
                child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/img_43.png",
                                height: 80,
                              ),
                              OutlinedButton.icon(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      width: 1.0, color: Colors.black),
                                ),
                                label: const Text(
                                  "Qyt:1",
                                  style: TextStyle(color: Colors.black),
                                ),
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Gown"),
                          const Text("Size: 30"),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.green,
                              ),
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.green,
                              ),
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.green,
                              ),
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Text("(22227)"),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                "assets/images/flipkart.png",
                                height: 40,
                                width: 40,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "62% off",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Rs.1299",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Rs.495",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text("Delivery by Fri May 12 |"),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Free Delivery",
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Rs. 495",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          side:
                              const BorderSide(width: 1.0, color: Colors.grey),
                        ),
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.grey,
                        ),
                        label: const Text(
                          "Remove",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          side:
                              const BorderSide(width: 1.0, color: Colors.grey),
                        ),
                        icon: const Icon(
                          Icons.save,
                          color: Colors.grey,
                        ),
                        label: const Text(
                          "Save for later",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          side:
                              const BorderSide(width: 1.0, color: Colors.grey),
                        ),
                        icon: const Icon(
                          Icons.event_busy,
                          color: Colors.grey,
                        ),
                        label: const Text(
                          "Buy this now",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
          ]),
        ));
  }
}
