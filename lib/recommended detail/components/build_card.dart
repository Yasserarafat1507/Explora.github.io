import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {
  const BuildCard({
    super.key, this.icon, required this.text,
  });

  final icon;
  final String text;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.fromLTRB(0, 14, 0, 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0x0D176FF2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 8),
              width: 30,
              height: 28,
              child: Icon(icon),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(right: 1.3),
                child: Text(
                  text, // Sesuaikan teks ini jika perlu
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 151, 150, 150),
                  ),
                  softWrap: false,        // Menambahkan softWrap agar teks tidak memotong secara tiba-tiba
                  overflow: TextOverflow.ellipsis, // Menambahkan ellipsis saat teks terlalu panjang
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
