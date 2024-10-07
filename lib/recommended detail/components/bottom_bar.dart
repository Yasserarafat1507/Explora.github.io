import 'package:dicoding/model/recomended_model.dart';
import 'package:dicoding/recommended%20detail/components/build_card.dart';
import 'package:flutter/material.dart';

class RDetailBottomBar extends StatelessWidget {
  const RDetailBottomBar({super.key, required this.recommended, });

  final RecomendedModel recommended;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFEDF2F6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                    '',
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 25,
                        ),
                        Text(
                          recommended.reting,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet.",
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 25),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 29),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Facilities", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BuildCard(icon: Icons.wifi, text: 'Free Wifi',),
                          BuildCard(icon: Icons.food_bank_rounded, text: 'Sarapan Pagi',),
                          BuildCard(icon: Icons.hot_tub, text: 'Shower',),
                          BuildCard(icon: Icons.pool, text: 'Kolam Renang',),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                              )
                            ]
                          ),
                          child: Icon(Icons.bookmark_outline, size: 40,),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              )
                            ]
                          ),
                          child: Text(recommended.price, style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              )
                            ]
                          ),
                          child: Text("Book Now", style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500
                          ),),
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
