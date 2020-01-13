import 'package:dr_words/core/constants/app_colors.dart';
import 'package:dr_words/core/domain/entities/custom_scaffold_data.dart';
import 'package:flutter/material.dart';

import '../base_model_widget.dart';

class CustomScaffoldMobile extends BaseModelWidget<CustomScaffoldData> {
  @override
  Widget build(BuildContext context, CustomScaffoldData data) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.appBarText),
        actions: data.actions,
        backgroundColor: primaryColor,
      ),
      body: data.body,
    );
  }
}
