import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Text(
                'A Better Government for Everyone!',
                style: GoogleFonts.bebasNeue(
                  fontSize: 38,
                ),
              ),
              Lottie.network(
                'https://lottie.host/db41165e-0dc6-4e26-8f2c-a506a654be39/YM1hMB5Aoa.json',
                width: 450,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
