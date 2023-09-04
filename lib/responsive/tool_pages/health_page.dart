import 'package:connect/constants.dart';
import 'package:flutter/material.dart';

class HealthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: SafeArea(
        child: Hero(
          tag: 'Health',
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: Text(
                'Health',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
