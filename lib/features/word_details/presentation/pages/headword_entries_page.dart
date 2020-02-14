import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:dr_words/injection.iconfig.dart';
import 'package:dr_words/core/constants/routes_path.dart' as routes;

class HeadwordEntriesPage extends StatefulWidget {
  final DictionaryWord wordSelected;

  HeadwordEntriesPage(this.wordSelected);

  @override
  _HeadwordEntriesPageState createState() => _HeadwordEntriesPageState();
}

class _HeadwordEntriesPageState extends State<HeadwordEntriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.wordSelected.label),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () async => await getIt<NavigationService>().navigateWithReplacement(routes.HomeRoute),
        ),
      ),
    );
  }
}
