import 'package:bmi_calculator/home.dart';
import 'package:flutter/material.dart';

Container gradientButton({
  required VoidCallback onTap,
  required String text,
  double marginTop = 30,
}) {
  return Container(
    margin: EdgeInsets.only(top: marginTop),
    child: InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0x9E4A1DFF), Color(0xFF4A1DFF)],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    ),
  );
}

Container inputField({
  required String label,
  required TextEditingController controller,
}) {
  return Container(
    margin: EdgeInsets.only(top: 10, bottom: 10),
    child: Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w200,
              fontSize: 16,
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 5),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),
      ],
    ),
  );
}

Container itemBox({
  required String title,
  required List<CardItem> cardOptions,
}) {
  return Container(
    margin: EdgeInsets.only(left: 15, right: 15),
    child: Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              title,
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Card(
          elevation: 5,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          child: GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            children:
                cardOptions
                    .map(
                      (item) => Container(
                        margin: EdgeInsets.only(top: 18),
                        child: Column(
                          children: [
                            Image.asset(item.imagePath, height: 51, width: 51),
                            Text(
                              item.label,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
          ),
        ),
      ],
    ),
  );
}
