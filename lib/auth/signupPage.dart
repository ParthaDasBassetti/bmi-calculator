import 'package:bmi_calculator/auth/loginPage.dart';
import 'package:bmi_calculator/helper/appColors.dart';
import 'package:bmi_calculator/helper/uiHelper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignupPageBuilder();
  }
}

class _SignupPageBuilder extends State<SignupPage> {
  TextEditingController usernameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 8),
                child: FaIcon(
                  FontAwesomeIcons.arrowLeft,
                  size: 35,
                  color: AppColors.colorPrimary,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 35, right: 35, top: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 80),
                      child: Text(
                        "Create your Account",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Text(
                      "Let’s be our member !",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w200,
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: inputField(
                        label: "Username",
                        controller: usernameController,
                      ),
                    ),
                    inputField(label: "Email", controller: emailController),
                    inputField(
                      label: "Password",
                      controller: passwordController,
                    ),
                    gradientButton(
                      onTap: () {},
                      text: "Sign up",
                      marginTop: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context) => LoginPage(),));
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: AppColors.colorPrimary,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
