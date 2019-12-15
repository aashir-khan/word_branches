import 'package:dr_words/responsive/screen_type_layout.dart';
import 'package:dr_words/viewmodels/home_viewmodel.dart';
import 'package:dr_words/widgets/base_widget.dart';
import 'package:flutter/material.dart';

import 'home_view_mobile.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) => model.initialise(context),
      child: ScreenTypeLayout(
        mobile: HomeViewMobile(),
      ),
    );
  }
}
