import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:flutter/material.dart';

class WordResultPage extends StatefulWidget {
  final DictionaryWord wordSelected;

  WordResultPage(this.wordSelected);

  @override
  _WordResultPageState createState() => _WordResultPageState();
}

class _WordResultPageState extends State<WordResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.wordSelected.label),
      ),
    );
  }
}
