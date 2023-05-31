import 'package:flutter/material.dart';

class MusicSubscriptionsScreen extends StatelessWidget {
  const MusicSubscriptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text(
          "Zee5",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: <Widget>[
          const Icon(
            Icons.search,
            size: 30,
            color: Colors.grey,
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                        "https://media.istockphoto.com/id/1273305991/photo/feeling-bored-technology-can-take-care-of-that.jpg?s=1024x1024&w=is&k=20&c=QYiylfO1vac0w1o1O8pr5K_RDTpQYjN_KjqvVQNODZI=",
                        fit: BoxFit.fitWidth,
                        height: 100,
                        width: 190,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1 Month Subscription",
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            Row(
                              children: [
                                const Text(
                                  "From",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
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
                                      fontWeight: FontWeight.bold,
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
              ],
            );
          },
          itemCount: 2,
        ),
      ),
    );
  }
}
