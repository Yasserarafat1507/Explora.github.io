import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      index: 2,
      items: [
        Icon(Icons.person_outline, size: 30,),
        Icon(Icons.favorite_outlined, size: 30,),
        Icon(Icons.home, size: 30, color: Colors.blueAccent,),
        Icon(Icons.location_on_outlined, size: 30,),
        Icon(Icons.list, size: 30,),
      ],
    );
  }
}