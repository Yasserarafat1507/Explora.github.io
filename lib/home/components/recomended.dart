import 'package:dicoding/assets/reting_icon.dart';
import 'package:dicoding/model/recomended_model.dart';
import 'package:dicoding/recommended%20detail/recommended_detail.dart';
import 'package:flutter/material.dart';

class Recommended extends StatelessWidget {
  const Recommended({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: RecomendedM.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RecommendedDetailScreen(recommended: RecomendedM[index],)));
                  },
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/img/img${index + 1}.jpeg"),
                            fit: BoxFit.cover,
                            opacity: 0.8)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            RecomendedM[index].name,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.more_vert,
                            size: 30,
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: RetingStar(
                          icon: Icons.star, 
                          reting: RecomendedM[index].reting,),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
