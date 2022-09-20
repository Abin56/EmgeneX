import 'dart:developer';

import 'package:emgenex/model/result.dart';
import 'package:emgenex/service/remote_service.dart';
import 'package:emgenex/view/home/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Getx extends GetxController {
  @override
  void onInit() {
    fetchingResults();
    super.onInit();
  }

  var resultlist = <Datum>[].obs;
  Future<List<Datum>?> fetchingResults() async {
    var results = await RemoteServices.fetchingDatas();
    if (results != null) {
      resultlist.value = results;
    }
  }

  userlogin(String name, String password) async {
    if (name == "eve.holt@reqres.in" && password == "cityslicka") {
      Map<String, dynamic> loginData = {
        "email": "eve.holt@reqres.in",
        "password": "cityslicka"
      };

      final response = await RemoteServices().Userlogin(loginData);
      try {
        if (response!.statusCode == 200 || response.statusCode == 201) {
          Get.to(() => const ScreenHome());
          Get.snackbar(
            duration: const Duration(seconds: 3),
            'Welcome cheif',
            'login Succesfull',
            colorText: Colors.green,
            snackPosition: SnackPosition.BOTTOM,
            padding: const EdgeInsets.all(20),
          );
          update();
        }
      } catch (e) {
        log(e.toString());
        Get.snackbar(
          duration: const Duration(seconds: 3),
          'Login Error',
          'entered null response',
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.red,
        );

        update();
      }
    }
    update();
  }
}
