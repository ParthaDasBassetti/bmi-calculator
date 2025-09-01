import 'package:bmi_calculator/auth/signupPage.dart';
import 'package:bmi_calculator/helper/appColors.dart';
import 'package:bmi_calculator/helper/uiHelper.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageBuilder();
}

class _LoginPageBuilder extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
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
                margin: EdgeInsets.only(left: 35, right: 35, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 199,
                        width: 275,
                        child: Image.asset('assets/images/signinImage.png'),
                      ),
                    ),
                    Text(
                      "Welcome !",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "Sign in to continue",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w200,
                        fontSize: 16,
                      ),
                    ),
                    inputField(
                      label: "Username",
                      controller: usernameController,
                    ),
                    inputField(
                      label: "Password",
                      controller: passwordController,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot your password ?",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w200,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    gradientButton(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),
                        );
                      },
                      text: "Sign in",
                      marginTop: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Doesn’t have account ? ",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w200,
                            fontSize: 12,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: AppColors.colorPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
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
