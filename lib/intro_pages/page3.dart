import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                'Create an account to get started!',
                style: GoogleFonts.bebasNeue(
                  fontSize: 38,
                ),
              ),
              Lottie.network(
                'https://lottie.host/cbf81d3b-d023-4e53-8a1b-da81667676ff/ZHgRhTQF0F.json',
                height: 500,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
