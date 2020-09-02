import 'package:dr_words/domain/dictionary_word_entries/entities/entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/sense.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

class EntryListItem extends StatelessWidget {
  final Entry entry;

  const EntryListItem({Key key, @required this.entry}) : super(key: key);

  Widget buildSenseItems(KtList<Sense> senses) {
    final List<Widget> widgets = [];

    for (var i = 0; i < senses.size; i++) {
      final sense = senses[i];
      final definition = sense?.definitions?.get(0);
      final example = sense?.examples?.get(0)?.text;
      final isLastSense = i == senses.size - 1;

      if (definition != null) {
        widgets.add(Text('${(i + 1).toString()}.'));
        widgets.add(Text(definition));
      }

      if (example != null) {
        widgets.add(Text(
          example,
          style: const TextStyle(
            fontStyle: FontStyle.italic,
            fontFamily: 'RobotoMono',
            letterSpacing: -0.25,
          ),
        ));
      }

      if (isLastSense == false) {
        widgets.add(const SizedBox(height: 18));
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = [];
    final KtList<Sense> senses = entry.senses;

    widgets.add(buildSenseItems(senses));

    if (entry.etymologies != null) {
      widgets.addAll(
        [
          const SizedBox(height: 12),
          const Divider(
            color: Colors.black,
            thickness: 2,
          ),
          const SizedBox(height: 12),
          const Text('Etymologies',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, decoration: TextDecoration.underline)),
          const SizedBox(height: 6)
        ],
      );

      for (final etymology in entry.etymologies.iter) {
        widgets.addAll([
          const SizedBox(height: 15),
          Text(
            etymology,
            textAlign: TextAlign.justify,
          ),
        ]);
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      ),
    );
  }
}
