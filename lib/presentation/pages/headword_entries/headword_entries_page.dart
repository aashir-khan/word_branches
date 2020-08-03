import 'package:auto_route/auto_route.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HeadwordEntriesPage extends HookWidget {
  final DictionaryWord wordSelected;

  const HeadwordEntriesPage(this.wordSelected);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(wordSelected.label),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => ExtendedNavigator.root.replace(Routes.homePage),
        ),
      ),
    );
  }
}
