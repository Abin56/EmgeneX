import 'dart:math';

import 'package:emgenex/controller/getx.dart';
import 'package:emgenex/view/home/widget/listCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

late int index;
final homecontroller = Get.put(Getx());

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EmgeneX'),
      ),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (context, index) {
              var rnd = Random();
              var r = 1 + rnd.nextInt(5 - 1);
              return CardListWidget(
                colorindex: r,
                index: index,
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: homecontroller.resultlist.value.length),
      ),
    );
  }
}
