import 'package:flutter/material.dart';

class TitleC extends StatelessWidget {
  const TitleC({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
      ),
    );
  }
}
