import 'package:bmi_calculator/auth/landingPage.dart';
import 'package:bmi_calculator/helper/appColors.dart';
import 'package:bmi_calculator/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: AppColors.colorPrimaryDark, // Set your desired color
      statusBarIconBrightness: Brightness.light, // For light or dark icons
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int tabIndex=0;
  List<Widget> tabWidgets=[
    HomePage(),
    Text("Weight Tracking"),
    Text("Nutrition"),
    Text("Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: tabWidgets[tabIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          tabIndex=index;
          setState(() {
          });
        },
        currentIndex: tabIndex,
        selectedItemColor: AppColors.colorPrimary,
        unselectedItemColor: AppColors.colorPrimary,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontFamily: "Poppins",fontSize: 12,),
        unselectedLabelStyle: TextStyle(fontFamily: "Poppins",fontSize: 12),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.track_changes_rounded),label: "Weight Tracker"),
          BottomNavigationBarItem(icon: Icon(Icons.emoji_food_beverage),label: "Nutrition"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
    );
  }
}
