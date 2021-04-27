import 'package:flutter/material.dart';

import '../../../../domain/word_search/entities/entry.dart';
import '../../../../domain/word_search/entities/headword_entry.dart';
import 'etymology_and_senses_card/etymology_and_senses_card.dart';

class EntryInformation extends StatelessWidget {
  final Entry entry;
  final HeadwordEntry headwordEntry;
  final int headwordEntryNumber;

  const EntryInformation({
    Key? key,
    required this.headwordEntry,
    required this.headwordEntryNumber,
    required this.entry,
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

        return SensesCard(
          headwordEntry: headwordEntry,
          senseNumber: index + 1,
          sense: sense,
          totalSenses: senses.size,
          headwordEntryNumber: headwordEntryNumber,
        );
      },
    ));

    if (entry.etymologies != null && !entry.etymologies!.isEmpty()) {
      widgets.addAll([
        const SizedBox(height: 16),
        EtymologyCard(
          heading: 'Etymologies',
          etymologyText: entry.etymologies![0],
        )
      ]);
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: widgets);
  }
}
