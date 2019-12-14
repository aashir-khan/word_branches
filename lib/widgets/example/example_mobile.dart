import 'package:flutter/material.dart';

class ExampleMobilePortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('This is mobile portrait from example widget'),
      ),
    );
  }
}

class ExampleMobileLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('This is mobile landscape from example widget'),
      ),
    );
  }
}
