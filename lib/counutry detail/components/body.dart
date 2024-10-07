import 'package:dicoding/counutry%20detail/components/Detail_app_bar.dart';
import 'package:dicoding/counutry%20detail/components/bottom_bar.dart';
import 'package:dicoding/model/country_model.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.country});

  final PopularModel country;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(country.img),
          fit: BoxFit.cover,
          opacity: 0.7,
          ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90), 
          child: DetailAppBar(),
          ),
          bottomNavigationBar: DetailBottomBar(country: country,)
      ),
    );
  }
}