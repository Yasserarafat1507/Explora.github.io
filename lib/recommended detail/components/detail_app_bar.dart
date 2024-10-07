import 'package:flutter/material.dart';

class RDetailAppBar extends StatefulWidget {
  const RDetailAppBar({super.key});

  @override
  _RDetailAppBarState createState() => _RDetailAppBarState();
}

class _RDetailAppBarState extends State<RDetailAppBar> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
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
              child: Icon(Icons.arrow_back, size: 28),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isFavorited = !isFavorited;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Icon(
                Icons.favorite,
                color: isFavorited ? Colors.redAccent : Colors.grey,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
