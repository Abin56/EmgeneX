import 'package:emgenex/view/login/screen_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    splash_navigator(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(238, 255, 255, 255),
      body: Center(
          child: Container(
        height: 600,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assest/images/Emgenex.jpeg'))),
      )),
    );
  }
}

// ignore: non_constant_identifier_names
Future<void> splash_navigator(context) async {
  await Future.delayed(const Duration(seconds: 2));
  Get.to(LoginScreen());
}
