import 'package:connect/util/constants.dart';
import 'package:flutter/material.dart';

class PolicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: SafeArea(
        child: Hero(
          tag: 'Police',
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Center(
              child: Text(
                'Police',
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
