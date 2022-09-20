import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/screen_home.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: listcolors[2].first.withOpacity(0.4),
            blurRadius: 7,
            spreadRadius: 5,
            offset: const Offset(4, 4),
          ),
        ],
        gradient: LinearGradient(
            colors: listcolors[0],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight),
        borderRadius: const BorderRadius.all(
          Radius.circular(22),
        ),
      ),
      child: const Center(
        child: Text('Login'),
      ),
    );
  }
}

const listcolors = [
  [Color(0xff6448fe), Color(0xff5fc6ff)],
  [Color(0xfffe6197), Color(0xffffb463)],
  [Color(0xff61a3fe), Color(0xff63ffd5)],
  [Color(0xffffa738), Color(0xffffe130)],
  [Color(0xffff5dcd), Color(0xffff8484)],
];
