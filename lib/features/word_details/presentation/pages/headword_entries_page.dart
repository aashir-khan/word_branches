import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:flutter/material.dart';

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
      ),
    );
  }
}
