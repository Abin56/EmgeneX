import 'dart:developer';

import 'package:emgenex/controller/getx.dart';
import 'package:emgenex/view/home/screen_home.dart';
import 'package:emgenex/view/login/widget/login_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final homecontroller = Get.put(Getx());

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    homecontroller.fetchingResults();

    // GoHomeScreen(context);
    return Form(
      key: _formKey,
      child: Scaffold(
        key: _scaffoldKey,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LottieBuilder.asset(
                      'assest/images/72874-user-profile-v2.json',
                      height: 200,
                    )
                  ],
                ),
                const Text(
                  "Welcome to",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Emgene",
                      style:
                          TextStyle(fontSize: 43, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "X",
                      style: TextStyle(
                          fontSize: 47,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 44.0,
                ),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "User Email ",
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Valid email address!';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 26,
                ),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "User Password ",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 88,
                ),
                SizedBox(
                  width: double.infinity,
                  child: GestureDetector(
                      onTap: () {
                        homecontroller.userlogin(_emailController.text.trim(),
                            _passwordController.text.trim());
                        // if (_emailController.text == 'emgenex@gmail.com' &&
                        //     _passwordController.text == '1234') {
                        //   log(_passwordController.text.toString());
                        //   log(_emailController.text.toString());
                        // } else if (_formKey.currentState!.validate()) {
                        //   final snackBarr = SnackBar(content: Text('Login'));

                        //   print("Set");
                        // } else {
                        //   // ignore: void_checks
                        //   final snackBar = SnackBar(
                        //     content:
                        //         const Text('Invalid Username or password '),
                        //     action: SnackBarAction(
                        //       label: 'OK',
                        //       onPressed: () {
                        //         // Some code to undo the change.
                        //       },
                        //     ),
                        //   );
                        //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        // }
                      },
                      child: const LoginButtonWidget()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
