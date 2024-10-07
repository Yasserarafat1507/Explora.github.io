import 'package:dicoding/assets/bottom_bar.dart';
import 'package:dicoding/home/components/body.dart';
import 'package:dicoding/home/components/app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String  routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: AppBarScreen(),
        ),
      body: Body(),
      bottomNavigationBar: BottomBar(),
    );
  }
}