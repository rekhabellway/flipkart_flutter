import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Login_Screen/login_screen.dart';

class Splash extends StatefulWidget {
  const Splash({
    Key? key,
  }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () => Get.to(const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Image.asset(
          "assets/images/img_54.png",
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
