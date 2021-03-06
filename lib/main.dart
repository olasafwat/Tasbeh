import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';


import 'View/HomeNavigationScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sebha App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.amiriTextTheme(),
        //primarySwatch: Colors.red,
      ),
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Image.asset('assests/images/splash3.jpg',
            fit: BoxFit.cover, height: double.infinity),
        splashIconSize: double.infinity,
        nextScreen: HomeNavigationScreen(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.bottomToTop,
      ),
    );
  }
}
