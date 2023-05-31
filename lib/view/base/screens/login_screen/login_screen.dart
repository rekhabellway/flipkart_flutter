import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flipkart/view/base/screens/bottom_bar/bottom_screen.dart';
import 'package:flipkart/view/base/screens/email_screen/email_screen.dart';
import 'package:flipkart/view/base/screens/otp_screen/otp_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneController = TextEditingController();

  FocusNode phoneFocus = FocusNode();

  FirebaseAuth auth = FirebaseAuth.instance;
  String countryDialCode = '+91';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: InkWell(
        onTap: () {
          login();
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.blueAccent,
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
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
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
                IconButton(
                  color: Colors.white,
                  onPressed: () {
                    Get.to(() => const BottomScreen());
                  },
                  icon: const Icon(
                    Icons.cancel_sharp,
                  ),
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
                      controller: phoneController,
                      focusNode: phoneFocus,
                      disableLengthCheck: true,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        labelText: 'Phone Number',
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
                          if (kDebugMode) {
                            print(phone.countryCode);
                          }
                          countryDialCode = phone.countryCode;
                        }
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Get.to(const EmailScreen());
                            },
                            child: const Text(
                              "Use Email-Id",
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> login() async {
    String n = countryDialCode + phoneController.text.trim();
    log(n);
    await auth.verifyPhoneNumber(
        phoneNumber: n,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          if (e.code == 'invalid-phone-number') {
            if (kDebugMode) {
              print('The provided phone number is not valid.');
            }
          } else {
            log(e.message.toString());
          }
        },
        codeSent: (String verificationId, int? resendToken) async {
          Get.to(() => OtpScreen(verificationId: verificationId));
        },
        timeout: const Duration(seconds: 10),
        codeAutoRetrievalTimeout: (String verificationId) {});
  }
}
