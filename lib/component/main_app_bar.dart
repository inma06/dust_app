import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../const/colors.dart';
import '../const/strings.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const ts = TextStyle(color: Colors.white, fontSize: 30.0);
    return SliverAppBar(
      backgroundColor: primaryColors,
      expandedHeight: 500.0, //todo. appbar size
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: kToolbarHeight),
            child: Column(
              children: [
                Text('서울', style: ts.copyWith(fontSize: 40)),
                const SizedBox(height: 20),
                Text(
                  DateFormat('M월dd일 HH시 mm분').format(DateTime.now()),
                  style: ts.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                Image.asset('asset/img/mediocre.png', width: Get.width * 0.3),
                const SizedBox(height: 20),
                Text(
                  '보통',
                  style: ts.copyWith(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  usually,
                  style: ts.copyWith(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
