import 'package:dicoding/counutry%20detail/popular_detail.dart';
import 'package:dicoding/model/country_model.dart';
import 'package:flutter/material.dart';

class Country extends StatelessWidget {
  const Country({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          height: 200,
          child: ListView.builder(
              itemCount: CountryM.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PopularDetailScreen(country: CountryM[index],)));
                  },
                  child: Container(
                    width: 160,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/img/img${index + 1}.jpg"),
                          fit: BoxFit.cover,
                          opacity: 0.7,
                        )),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.bookmark_border_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Spacer(),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            CountryM[index].name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        )),
      ],
    );
  }
}
