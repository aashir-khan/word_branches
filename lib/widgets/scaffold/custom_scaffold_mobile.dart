import 'package:dr_words/constants/app_colors.dart';
import 'package:dr_words/datamodels/custom_scaffold_data.dart';
import 'package:dr_words/widgets/base_model_widget.dart';
import 'package:flutter/material.dart';

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
