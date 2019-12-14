import 'package:flutter/material.dart';

class ExampleTabletPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('This is tablet portrait from example widget'),
      ),
    );
  }
}

class ExampleTabletLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('This is tablet landscape from example widget'),
      ),
    );
  }
}
