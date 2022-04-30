import '../component/main_app_bar.dart';
import '../component/main_drawer.dart';
import '../const/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColors,
      drawer: MainDrawer(),
      body: CustomScrollView(
        slivers: [MainAppBar()],
      ),
    );
  }
}
