import 'package:dr_words/datamodels/example_item_data.dart';
import 'package:dr_words/widgets/base_model_widget.dart';
import 'package:flutter/material.dart';

class ExampleWidgetTabletPortrait extends BaseModelWidget<ExampleItemData> {
  @override
  Widget build(BuildContext context, ExampleItemData data) {
    return Container(
      child: Center(
        child: Text(
          data.text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class ExampleWidgetTabletLandscape extends BaseModelWidget<ExampleItemData> {
  @override
  Widget build(BuildContext context, ExampleItemData data) {
    return Container(
      child: Center(
        child: Text(
          data.text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
