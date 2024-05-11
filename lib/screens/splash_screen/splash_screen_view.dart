import 'package:flutter/material.dart';
import 'package:up_care_v1/screens/login_screen/login_screen_view.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  static const routeName = 'splash_screen';

  @override
  State<SplashScreenView> createState() => _HomePageState();
}

class _HomePageState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(context, LoginScreenView.routeName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F7),
      body: Container(
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/images/logo.png"))),
      ),
    );
  }
}
