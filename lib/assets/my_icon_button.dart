import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({super.key, required this.press, required this.icon});

  final icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                ),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(icon),
            ),
          );
  }
}