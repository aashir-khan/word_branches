import 'package:dr_words/domain/dictionary_word_entries/entities/entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:dr_words/presentation/views/lexical_entry/widgets/etymology_and_senses_card/etymology_and_senses_card.dart';
import 'package:flutter/material.dart';

class EntryInformation extends StatelessWidget {
  final Entry entry;
  final HeadwordEntry headwordEntry;
  final int headwordEntryNumber;

  const EntryInformation({
    Key key,
    @required this.headwordEntry,
    @required this.headwordEntryNumber,
    this.entry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final senses = entry.senses;
    final List<Widget> widgets = [];

    widgets.add(ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      key: PageStorageKey(senses),
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemCount: senses.size,
      itemBuilder: (context, index) {
        final sense = senses[index];

        return EtymologyAndSensesCard(
          headwordEntry: headwordEntry,
          senseNumber: index + 1,
          sense: sense,
          totalSenses: senses.size,
          headwordEntryNumber: headwordEntryNumber,
        );
      },
    ));

    if (entry?.etymologies != null) {
      widgets.addAll([
        const SizedBox(height: 16),
        EtymologyAndSensesCard(
          headwordEntry: headwordEntry,
          heading: 'Etymologies',
          etymologyText: entry.etymologies[0],
          headwordEntryNumber: headwordEntryNumber,
        )
      ]);
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: widgets);
  }
}
