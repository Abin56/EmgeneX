import 'package:emgenex/controller/getx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../login/widget/login_button.dart';

final homecontroller = Get.put(Getx());

class CardListWidget extends StatelessWidget {
  int index;

  var colorindex;
  CardListWidget({
    Key? key,
    required this.index,
    required this.colorindex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 110.h,
          width: 110.w,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: listcolors[colorindex].first.withOpacity(0.4),
                blurRadius: 8,
                spreadRadius: 2,
                offset: const Offset(4, 4),
              ),
            ],
            gradient: LinearGradient(
                colors: listcolors[colorindex],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
            borderRadius: const BorderRadius.all(
              Radius.circular(22),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: SizedBox(
                      height: 100.h,
                      width: 100.w,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Image.network(
                            (homecontroller.resultlist.value[index].avatar),
                          )),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "  Name:",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            '${homecontroller.resultlist[index].firstName} ${homecontroller.resultlist[index].lastName}',
                            style: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.black87,
                                // color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          const Text(
                            "E-mail:",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                            '${homecontroller.resultlist[index].email}',
                            style: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
