import 'package:bmi_calculator/auth/loginPage.dart';
import 'package:bmi_calculator/auth/signupPage.dart';
import 'package:bmi_calculator/helper/uiHelper.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<StatefulWidget> createState() => _LandingPageBuilder();
}

class _LandingPageBuilder extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 252,
                width: 308,
                margin: EdgeInsets.only(top: 70),
                child: Image.asset('assets/images/landingPageImage.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Welcome to BMI Cal+",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Text(
                  "Best guide for calculating your body mass index.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w200,
                    fontSize: 16,
                  ),
                ),
              ),
              gradientButton(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                text: "Sign in",
              ),

              Container(
                height: 50,
                width: 300,
                margin: EdgeInsets.only(top: 15),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    side: BorderSide(color: Color(0xFF4A1DFF), width: 1),
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
