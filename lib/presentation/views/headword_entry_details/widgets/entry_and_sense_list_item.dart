import 'package:dr_words/domain/dictionary_word_entries/entities/entry.dart';
import 'package:flutter/material.dart';
import 'package:dr_words/presentation/core/constants/app_colors.dart' as colors;

class EntryAndSenseListItem extends StatelessWidget {
  final Entry entry;

  const EntryAndSenseListItem({Key key, @required this.entry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = [];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(border: Border.all(color: colors.primaryColorLight)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      ),
    );
  }
}
