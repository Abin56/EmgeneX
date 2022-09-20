import 'package:emgenex/controller/getx.dart';
import 'package:emgenex/service/remote_service.dart';
import 'package:emgenex/view/login/screen_login.dart';
import 'package:emgenex/view/splashs_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(423.5294196844927, 925.0980565145541),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            theme: ThemeData(
              textTheme: const TextTheme(
                  bodyText1: TextStyle(
                    color: Colors.black,
                  ),
                  bodyText2: TextStyle(color: Colors.black)),
            ),
            debugShowCheckedModeBanner: false,
            home: const SplashScreen(),
          );
        });
  }
}
