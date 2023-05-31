import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../bottom_bar/bottom_screen.dart';

class OtpScreen extends StatefulWidget {
  final String verificationId;

  const OtpScreen({Key? key, required this.verificationId}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;

  String smsCode = '';

  Future<void> verify() async {
    if (smsCode.length == 6) {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: widget.verificationId, smsCode: smsCode);
      await auth.signInWithCredential(credential).then((value) {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: InkWell(
        onTap: () async {
          Get.to(() => const BottomScreen());
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
              "Verify",
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
                const Text(
                  "Please enter the verification code we've sent you on",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text: "+91 9399819186",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15)),
                          TextSpan(
                              text: " Edit",
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 15)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                OtpTextField(
                  numberOfFields: 6,
                  showCursor: true,
                  borderColor: const Color(0xFF512DA8),
                  keyboardType: TextInputType.number,
                  showFieldAsBox: true,
                  onCodeChanged: (String code) {
                    smsCode = code;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Resend code",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
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
}
