import 'package:dr_words/core/presentation/viewmodels/home_viewmodel.dart';
import 'package:dr_words/core/presentation/widgets/base_widget.dart';
import 'package:dr_words/core/responsive/screen_type_layout.dart';
import 'package:flutter/material.dart';

import 'home_page_mobile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) => model.initialise(context),
      child: ScreenTypeLayout(
        mobile: HomePageMobile(),
      ),
    );
  }
}
