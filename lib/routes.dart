// import 'package:dicoding/counutry%20detail/popular_detail.dart';
// import 'package:dicoding/home/components/country.dart';
import 'package:dicoding/home/home.dart';
import 'package:dicoding/splash/splash.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes ={
  SplashScreen.routesName:  (context) => SplashScreen(),
  HomeScreen.routeName:  (context) => HomeScreen(),
  // PopularDetailScreen.routeName:   (context) => PopularDetailScreen(country: country,),
};