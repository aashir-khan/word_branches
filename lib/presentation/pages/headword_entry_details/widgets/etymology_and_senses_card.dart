import 'package:auto_route/auto_route.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/sense.dart';
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';

import 'package:dr_words/presentation/core/constants/app_colors.dart' as colors;
import 'package:kt_dart/collection.dart';

class EtymologyAndSensesCard extends StatelessWidget {
  final HeadwordEntry headwordEntry;
  final Sense sense;
  final int senseNumber;
  final int totalSenses;
  final String heading;
  final String etymologyText;

  const EtymologyAndSensesCard({
    Key key,
    @required this.headwordEntry,
    @required this.sense,
    this.senseNumber,
    this.totalSenses,
    this.heading,
    this.etymologyText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = [];

    if (heading != null) {
      widgets.addAll(
        [
          Text(
            heading,
            style: const TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
            ),
          ),
          const SizedBox(height: 8)
        ],
      );
    }

    if (senseNumber != null) {
      widgets.addAll([
        Text('$senseNumber.', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
      ]);
    }

    if (sense?.regions != null || sense?.registers != null || sense?.definitions != null || sense?.notes != null) {
      final List<Widget> _mainTextWidgets = [];

      if (sense?.regions != null) {
        sense.regions.forEach(
          (region) => _mainTextWidgets.addAll(
            [
              Text(
                region.formattedText,
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  color: colors.secondaryColorLight,
                ),
              ),
              const SizedBox(width: 10)
            ],
          ),
        );
      }
      if (sense?.registers != null) {
        sense.registers.forEach(
          (register) => _mainTextWidgets.addAll(
            [
              Text(
                register.formattedText,
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  color: colors.secondaryColorLight,
                ),
              ),
              const SizedBox(width: 2)
            ],
          ),
        );
      }

      if (sense?.notes != null) {
        sense.notes.forEach((note) {
          if (note.type != EnumToString.parse(NoteTypeEnum.technicalNote)) {
            _mainTextWidgets.add(
              Text(
                '[${note.text}]',
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  color: colors.secondaryColorLight,
                ),
              ),
            );
          }
        });
      }

      if (sense?.definitions != null) {
        _mainTextWidgets.add(
          Text(sense.definitions.get(0).capitalize(), textAlign: TextAlign.justify),
        );
      }

      widgets.add(Wrap(children: _mainTextWidgets));
    }

    if (sense?.notes != null) {
      sense.notes.forEach((note) {
        if (note.type == EnumToString.parse(NoteTypeEnum.technicalNote)) {
          widgets.add(
            Row(
              children: <Widget>[
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    note.text,
                    style: const TextStyle(fontSize: 13, fontFamily: 'RobotoMono'),
                  ),
                ),
              ],
            ),
          );
        }
      });
    }

    if (etymologyText != null) {
      widgets.add(Text(etymologyText.capitalize(), textAlign: TextAlign.justify));
    }

    if (sense?.examples != null) {
      widgets.add(
        Text(
          sense.examples.get(0).text.capitalize(),
          style: const TextStyle(
            fontStyle: FontStyle.italic,
            fontFamily: 'RobotoMono',
            letterSpacing: -0.25,
          ),
        ),
      );
    }

    if (sense?.crossReferenceMarkers != null) {
      sense.crossReferenceMarkers.forEach(
        (crossReferenceMarker) => widgets.add(
          Text(
            crossReferenceMarker,
            textAlign: TextAlign.justify,
          ),
        ),
      );
    }

    if (sense?.subsenses != null) {
      widgets.addAll([
        const SizedBox(height: 8),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          OutlineButton(
            borderSide: const BorderSide(color: colors.secondaryColorLight, width: 1.5),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            onPressed: () {
              ExtendedNavigator.of(context).push(Routes.subsenseDetailsPage,
                  arguments: SubsenseDetailsPageArguments(
                    headwordEntry: headwordEntry,
                    parentSenseDefinition: sense.definitions.get(0),
                    subsenses: sense.subsenses,
                  ));
            },
            child: Row(
              children: <Widget>[
                const Text('Subsenses'),
                const SizedBox(width: 8),
                Icon(Icons.arrow_forward),
              ],
            ),
          )
        ])
      ]);
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: colors.primaryColorLight, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      ),
    );
  }
}
