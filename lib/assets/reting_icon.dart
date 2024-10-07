import 'package:flutter/material.dart';

class RetingStar extends StatelessWidget {
  const RetingStar({
    super.key, this.icon, required this.reting,
  });

  final icon;
  final String reting;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color:
            const Color.fromARGB(255, 133, 132, 132),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.amber,
          ),
          Text(
            reting,
            style: TextStyle(
              color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
