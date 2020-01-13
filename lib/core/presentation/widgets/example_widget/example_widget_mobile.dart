import 'package:dr_words/core/domain/entities/example_item_data.dart';
import 'package:flutter/material.dart';

import '../base_model_widget.dart';

class ExampleWidgetMobilePortrait extends BaseModelWidget<ExampleItemData> {
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

class ExampleWidgetMobileLandscape extends BaseModelWidget<ExampleItemData> {
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
