import 'package:dicoding/model/recomended_model.dart';
import 'package:dicoding/recommended%20detail/components/bottom_bar.dart';
import 'package:dicoding/recommended%20detail/components/detail_app_bar.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.recommended, });

  final RecomendedModel recommended;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(recommended.img),
          fit: BoxFit.cover,
          opacity: 0.7,
          ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90), 
          child: RDetailAppBar(),
          ),
          bottomNavigationBar: RDetailBottomBar(recommended: recommended,)
      ),
    );
  }
}