import 'package:dicoding/model/country_model.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatefulWidget {
  final PopularModel destination; // Tambahkan parameter model

  const DetailAppBar({required this.destination, super.key});

  @override
  _DetailAppBarState createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar> {
  late bool isFavorited; // Status favorit dari model

  @override
  void initState() {
    super.initState();
    // Setel status favorit awal dari model
    isFavorited = widget.destination.isFavorited;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(Icons.arrow_back, size: 28),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                // Toggle status favorit
                isFavorited = !isFavorited;
                widget.destination.isFavorited = isFavorited; // Update model
              });
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
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
