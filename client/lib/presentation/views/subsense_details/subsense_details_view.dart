import 'package:audioplayers/audioplayers.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/word_search/entities/headword_entry.dart';
import '../../../domain/word_search/entities/sense.dart';
import '../../../injection.dart';
import '../../core/constants/app_colors.dart' as colors;
import '../../core/custom_icons_icons.dart';
import '../lexical_entry/widgets/etymology_and_senses_card/etymology_and_senses_card.dart';
import '../utils/ui_utils.dart';

class SubsenseDetailsView extends HookWidget {
  List<Widget> buildActions(BuildContext context, SubsenseDetailsViewRouteArgs arguments) {
    final List<Widget> widgets = [];
    final audioFile = arguments.headwordEntry.audioFile;

    widgets.add(
      IconButton(
        icon: const Icon(Icons.info),
        onPressed: () => Flushbar(
          backgroundColor: colors.secondaryColorDark,
          dismissDirection: FlushbarDismissDirection.HORIZONTAL,
          flushbarPosition: FlushbarPosition.TOP,
          message: 'This screen lists submeanings for the chosen meaning of a word.',
        )..show(context),
      ),
    );

    if (audioFile != null) {
      widgets.add(
        IconButton(
          icon: const Icon(CustomIcons.sound_on_icon),
          onPressed: () => getIt<AudioPlayer>().play(audioFile),
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments as SubsenseDetailsViewRouteArgs;
    final senses = arguments.subsenses;
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
            message: arguments.headwordEntry.wordLabel,
            showDuration: Duration.zero,
            child: UIUtils.buildTextWithSuperscript(
                context, arguments.headwordEntry.wordLabel, arguments.headwordEntryNumber.toString(),
                textColor: Colors.white),
          ),
        ),
        actions: buildActions(context, arguments),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              alignment: Alignment.centerLeft,
              width: double.infinity,
              color: colors.primaryColorLight,
              child: Text(
                arguments.parentSenseDefinition,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                key: PageStorageKey(senses),
                shrinkWrap: true,
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemCount: senses.size,
                itemBuilder: (context, index) {
                  final sense = senses.get(index);

                  return SensesCard(
                    headwordEntry: arguments.headwordEntry,
                    senseNumber: index + 1,
                    sense: sense,
                    totalSenses: senses.size,
                    headwordEntryNumber: arguments.headwordEntryNumber,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SubsenseDetailsViewRouteArgs {
  final Key? key;
  final HeadwordEntry headwordEntry;
  final KtList<Sense> subsenses;
  final String parentSenseDefinition;
  final int headwordEntryNumber;
  SubsenseDetailsViewRouteArgs({
    this.key,
    required this.headwordEntry,
    required this.subsenses,
    required this.parentSenseDefinition,
    required this.headwordEntryNumber,
  });
}
