import 'package:audioplayer/audioplayer.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/sense.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/presentation/core/custom_icons_icons.dart';
import 'package:dr_words/presentation/pages/headword_entry_details/widgets/lexical_entry_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HeadwordEntryDetailsPage extends HookWidget {
  final HeadwordEntry headwordEntry;
  final Sense parentSense;

  const HeadwordEntryDetailsPage({
    @required this.headwordEntry,
    this.parentSense,
  });

  List<Widget> buildActions() {
    Widget buildTooltip() {
      final tooltipKey = GlobalKey();
      return GestureDetector(
        onTap: () {
          final dynamic tooltip = tooltipKey.currentState;
          tooltip.ensureTooltipVisible();
        },
        child: Tooltip(
          key: tooltipKey,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          message:
              'This screen lists all the lexical entries (a grouping of various senses in a specific language, and a lexical category that relates to a word) for the current headword entry.',
          child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(Icons.info),
          ),
        ),
      );
    }

    final List<Widget> widgets = [];
    final audioFile = headwordEntry.audioFile;

    widgets.add(buildTooltip());

    if (audioFile != null) {
      widgets.add(
        IconButton(
          icon: Icon(CustomIcons.sound_on_icon),
          onPressed: () => getIt<AudioPlayer>().play(audioFile),
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    final tooltipKey = GlobalKey();

    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            final dynamic tooltip = tooltipKey.currentState;
            tooltip.ensureTooltipVisible();
          },
          child: Tooltip(
            key: tooltipKey,
            message: headwordEntry.wordLabel,
            showDuration: Duration.zero,
            child: Row(
              children: <Widget>[
                Text(headwordEntry.wordLabel, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ),
        actions: buildActions(),
      ),
      body: ListView.builder(
        itemCount: headwordEntry.lexicalEntries.size,
        itemBuilder: (context, index) {
          final lexicalEntry = headwordEntry.lexicalEntries[index];
          return LexicalEntryListItem(
            lexicalEntry: lexicalEntry,
            headwordEntry: headwordEntry,
          );
        },
      ),
    );
  }
}
