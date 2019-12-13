import '../../core/viewmodels/home_model.dart';
import 'package:flutter/material.dart';

import 'base_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      builder: (context, model, child) => Scaffold(
          body: Center(
        child: Text('Hello World'),
      )),
    );
  }
}
