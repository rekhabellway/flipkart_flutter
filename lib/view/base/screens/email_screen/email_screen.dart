import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../Login_Screen/login_screen.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.cancel_sharp,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 120,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                            text: "Flipkart",
                            style: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 20)),
                        WidgetSpan(
                            child: Image.asset(
                          "assets/images/img_54.png",
                          height: 20,
                          width: 50,
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: Get.height - 120,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Log in for the best experience"),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Text(
                      "Enter your phone number to continue",
                      style: TextStyle(color: Colors.grey[700], fontSize: 10),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    IntlPhoneField(
                      disableLengthCheck: true,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        labelText: 'Email-Id',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        if (kDebugMode) {
                          print(phone.completeNumber);
                        }
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Get.to(const LoginScreen());
                            },
                            child: const Text(
                              "Use Phone Number",
                              style: TextStyle(color: Colors.blueAccent),
                            ))
                      ],
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "By continuing you argeen to Flipkart's ",
                                style: TextStyle(
                                    color: Colors.grey[700], fontSize: 12)),
                            const TextSpan(
                                text: "Terms of use",
                                style: TextStyle(
                                    color: Colors.blueAccent, fontSize: 12)),
                            TextSpan(
                              text: "and",
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 12),
                            ),
                            const TextSpan(
                                text: "Privacy Policy",
                                style: TextStyle(
                                    color: Colors.blueAccent, fontSize: 10))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: ExactAssetImage('assets/images/img_1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
