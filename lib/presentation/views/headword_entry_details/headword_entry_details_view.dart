import 'package:audioplayer/audioplayer.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:dr_words/presentation/core/custom_icons_icons.dart';
import 'package:dr_words/presentation/views/headword_entry_details/widgets/lexical_entry_list_item.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:dr_words/presentation/core/constants/app_colors.dart' as colors;

class HeadwordEntryDetailsView extends HookWidget {
  final HeadwordEntry headwordEntry;

  const HeadwordEntryDetailsView({
    @required this.headwordEntry,
  });

  List<Widget> buildActions(BuildContext context) {
    final List<Widget> widgets = [];
    final audioFile = headwordEntry.audioFile;

    widgets.add(
      IconButton(
        icon: Icon(Icons.info),
        onPressed: () => Flushbar(
          backgroundColor: colors.secondaryColorDark,
          dismissDirection: FlushbarDismissDirection.HORIZONTAL,
          flushbarPosition: FlushbarPosition.TOP,
          title: 'Lexical Entries Screen',
          message:
              'This screen lists all the lexical entries (a grouping of various senses in a specific language, and a lexical category that relates to a word) for the current headword entry.',
        )..show(context),
      ),
    );

    if (audioFile != null) {
      widgets.add(
        IconButton(
          icon: const Icon(CustomIcons.sound_on_icon),
          onPressed: () => AudioPlayer().play(audioFile),
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
            child: Text(headwordEntry.wordLabel, overflow: TextOverflow.ellipsis),
          ),
        ),
        actions: buildActions(context),
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
