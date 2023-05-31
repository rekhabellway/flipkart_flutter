import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
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
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 150,
              decoration: const BoxDecoration(color: Colors.blueAccent),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/user_boy.png",
                      height: 70,
                      width: 70,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "or",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      "assets/images/user_girl.png",
                      height: 70,
                      width: 70,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: "FirstName",
                      labelText: "FirstName",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: "LastName", labelText: "LastName"),
                  ),
                  Center(
                    child: TextButton(
                        onPressed: () {}, child: const Text("SUBMIT")),
                  ),
                  const TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: "Mobile Number",
                        labelText: "Mobile NUmber",
                        suffixText: "Update",
                        suffixStyle: TextStyle(color: Colors.black)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: "Email Id",
                        labelText: "Email Id",
                        suffixText: "Verify",
                        suffixStyle: TextStyle(color: Colors.black)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Deactivate Account",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
