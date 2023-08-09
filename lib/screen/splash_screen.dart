import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pengenalan_tanaman_herbal/screen/get_started_screen.dart';
import 'package:pengenalan_tanaman_herbal/utils/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const GetStartedScreen(),
        ),
        (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/gambar/logo.png'),
                ),
              ),
            ),
            Text(
              'Pengenalan Tanaman Herbal',
              style: blackTextStyle.copyWith(
                fontSize: 28,
                fontWeight: extraBold,
                letterSpacing: 5,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
