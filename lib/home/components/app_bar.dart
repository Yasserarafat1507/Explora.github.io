import 'package:dicoding/assets/my_icon_button.dart';
import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyIconButton(press: () {}, icon: Icons.sort_rounded),
          Row(
            children: [
              Text(
                  "Explorea",
                  style: TextStyle(
                    fontFamily: "hiatus_2",
                    fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5
                    ),
              )
            ],
          ),
          MyIconButton(icon: Icons.search, press: () {},),
        ],
      ),
    );
  }
}