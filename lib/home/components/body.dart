import 'package:dicoding/home/components/carosile.dart';
import 'package:dicoding/home/components/category.dart';
import 'package:dicoding/home/components/country.dart';
import 'package:dicoding/home/components/recomended.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  Body({super.key});

  var category = [
    'Best Places',
    'Most Visites',
    'Favourite',
    'New Added',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TitleC(title: "Country",),
                SizedBox(height: 15),
              Country(),
              SizedBox(
                height: 20,
              ),
              Carosile(category: category),
              SizedBox(
                height: 10,
              ),
              TitleC(title: "Recommended"),
                SizedBox(height: 15),
              Recommended()
            ],
          ),
        ),
      ),
    );
  }
}




