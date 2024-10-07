import 'package:dicoding/counutry%20detail/components/body.dart';
import 'package:dicoding/model/country_model.dart';
import 'package:flutter/material.dart';

class PopularDetailScreen extends StatelessWidget {
  static String  routeName = '/detail';
  const PopularDetailScreen({super.key, required this.country});

  final PopularModel country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(country: country,),
    );
  }
}