import 'package:dr_words/viewmodels/search_viewmodel.dart';
import 'package:dr_words/widgets/base_model_widget.dart';
import 'package:dr_words/widgets/loading_indicator/loading_indicator.dart';
import 'package:flutter/material.dart';

class SearchViewMobile extends BaseModelWidget<SearchViewModel> {
  @override
  Widget build(BuildContext context, SearchViewModel model) {
    return LoadingIndicator();
  }
}
