import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    getToMainScreen();
  }

  Future<void> getToMainScreen() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    await Get.offAll(() => const MainScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/intro.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_center.png'),
            Text(
              'MARP',
              style: TextStyle(color: Colors.white),
            )
          ],
        )),
      ),
    );
  }
}
