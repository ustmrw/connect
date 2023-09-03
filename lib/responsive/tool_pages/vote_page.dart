import 'package:connect/constants.dart';
import 'package:flutter/material.dart';

class VotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: SafeArea(
        child: Hero(
          tag: 'Vote',
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.yellow,
            ),
            child: Center(
              child: Text(
                'Vote',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
