import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFC41A3B),
        child: Center(
          child: Text(
            'Thank You!',
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFBE0E6),
            ),
          ),
        ),
      ),
    );
  }
}
