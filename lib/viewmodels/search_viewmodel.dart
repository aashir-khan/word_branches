import 'package:dr_words/views/search/search_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SearchViewModel extends ChangeNotifier {
  void beginSearch(context) async {
    var result =
        await showSearch(context: context, delegate: WordQuerySearch());
    print(result);
  }
}
