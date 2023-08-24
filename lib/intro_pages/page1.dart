import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'Welcome to USA Connect!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.bebasNeue(
                    fontSize: 42,
                  ),
                ),
                Lottie.network(
                  'https://lottie.host/607a4271-07bd-423c-adab-a3e6d822a2f3/4IExiKcpyJ.json',
                  height: 500,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
