import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../domain/word_search/entities/entry.dart';
import '../../../domain/word_search/entities/headword_entry.dart';
import '../../../domain/word_search/entities/lexical_entry.dart';
import '../../core/constants/app_colors.dart' as colors;
import '../../core/custom_icons_icons.dart';
import '../utils/ui_utils.dart';
import 'widgets/entry_information_widget.dart';

class LexicalEntryView extends HookWidget {
  final HeadwordEntry headwordEntry;
  final LexicalEntry lexicalEntry;
  final int headwordEntryNumber;

  const LexicalEntryView({
    required this.headwordEntry,
    required this.lexicalEntry,
    required this.headwordEntryNumber,
  });

  List<Widget> buildActions(BuildContext context) {
    final List<Widget> widgets = [];
    final audioFile = headwordEntry.audioFile;

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
            child: UIUtils.buildTextWithSuperscript(context, headwordEntry.wordLabel, headwordEntryNumber.toString(),
                textColor: Colors.white),
          ),
        ),
        actions: buildActions(context),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ListTile(title: _buildWidgetHeaderContent()),
          _buildSingleEntryWidget(lexicalEntry.entries[0]),
        ],
      ),
    );
  }

  Widget _buildWidgetHeaderContent() {
    final List<Widget> _wrapWidgets = [];
    _wrapWidgets.add(
      Text(
        lexicalEntry.lexicalCategory.text,
        style: const TextStyle(color: colors.secondaryColor, fontWeight: FontWeight.bold),
      ),
    );

    if (lexicalEntry.derivativeOf != null) {
      _wrapWidgets.addAll(
        [
          const SizedBox(width: 5),
          Text(
            "(Derivative of ${lexicalEntry.derivativeOf[0].text})",
            style: const TextStyle(
              fontStyle: FontStyle.italic,
              color: colors.secondaryColorLight,
            ),
          ),
        ],
      );
    }

    return Wrap(children: _wrapWidgets);
  }

  Widget _buildSingleEntryWidget(Entry entry) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: EntryInformation(
        entry: entry,
        headwordEntry: headwordEntry,
        headwordEntryNumber: headwordEntryNumber,
      ),
    );
  }
}
