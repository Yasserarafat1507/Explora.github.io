import 'package:dicoding/home/home.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/img/mountain.jpg"),
            fit: BoxFit.cover,
            opacity: 0.5
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                        "Explorea",
                        style: TextStyle(
                          fontFamily: "hiatus_2",
                          fontSize: 100,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5
                          ),
                    ),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text.rich(
                      TextSpan(
                        text: "Explore the world with us", style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )
                      )
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text("Explore",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}