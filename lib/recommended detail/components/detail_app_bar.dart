import 'package:dicoding/model/recomended_model.dart';
import 'package:flutter/material.dart';

class RDetailAppBar extends StatefulWidget {
  final RecomendedModel destination;

  const RDetailAppBar({required this.destination, super.key});

  @override
  _RDetailAppBarState createState() => _RDetailAppBarState();
}

class _RDetailAppBarState extends State<RDetailAppBar> {
  late bool isFavorited;

  @override
  void initState() {
    super.initState();
    isFavorited = widget.destination.isFavorited; // Set initial state from model
  }

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
                widget.destination.isFavorited = isFavorited; // Update model status
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
