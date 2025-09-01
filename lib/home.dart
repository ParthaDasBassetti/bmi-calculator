import 'package:bmi_calculator/helper/uiHelper.dart';
import 'package:flutter/material.dart';

class CardItem {
  String label;
  String imagePath;
  VoidCallback onTap;

  CardItem({required this.label, required this.imagePath, required this.onTap});
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CardItem> calculateOptions = [
    CardItem(
      label: "BMI Calculator",
      imagePath: "assets/images/bmi.png",
      onTap: () {},
    ),
  ];
  List<CardItem> nearbyOptions = [
    CardItem(
      label: "Fitness Center",
      imagePath: "assets/images/weightlifter.png",
      onTap: () {},
    ),
    CardItem(
      label: "Yoga Event",
      imagePath: "assets/images/lotus.png",
      onTap: () {},
    ),
    CardItem(
      label: "Zumba Event",
      imagePath: "assets/images/zumba.png",
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),

      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 40),
                      child: Text(
                        "BMI Cal+",
                        style: TextStyle(fontFamily: "Poppins", fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, top: 20, bottom: 20),
                  child: Icon(Icons.info),
                ),
              ],
            ),
            itemBox(cardOptions: calculateOptions, title: "Calculate"),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: itemBox(cardOptions: nearbyOptions, title: "Near By"),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 10,bottom: 7),
                      child: Text(
                        "Health News",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/healthNews.png",
                      height: 110,
                      width: 300,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
