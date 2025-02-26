import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_prof4/onboarding/presentation/boarding_screens.dart/boarding_screen.dart';


// сплеш скрины
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();



}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),()=> Navigator.push(context, MaterialPageRoute(builder:(context) => BoardingScreen(),)));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(72, 178, 231, 1),
      body: Center(
        // ignore: deprecated_member_use
        child: Container(height: 120,width: 120,decoration:  const BoxDecoration(
          shape: BoxShape.circle,
          color:Colors.white
        ),child: SvgPicture.asset('assets/bag-2.svg',height: 50,width: 50,color: const Color.fromRGBO(72, 178, 231, 1),)),
      ),
    );
  }
}