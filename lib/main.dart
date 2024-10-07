import 'package:dicoding/routes.dart';
import 'package:dicoding/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headlineMedium: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
        ),
        scaffoldBackgroundColor: Color(0xFFEDF2F6)
      ),
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: SplashScreen.routesName,
    );
  }
}

