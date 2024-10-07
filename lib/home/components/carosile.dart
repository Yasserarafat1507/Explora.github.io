import 'package:flutter/material.dart';

class Carosile extends StatelessWidget {
  const Carosile({
    super.key,
    required this.category,
  });

  final List<String> category;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            for (int i=0; i<4; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      ),
                    ],
              ),
              child: Text(category[i], style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),),
            )
          ],
        ),
        ),
    );
  }
}
