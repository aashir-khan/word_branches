import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:stacked/stacked.dart';

import '../../../../../domain/word_search/entities/headword_entry.dart';
import '../../../../../domain/word_search/entities/sense.dart';
import '../../../../core/constants/app_colors.dart' as colors;
import 'etymology_and_senses_card_viewmodel.dart';

class EtymologyAndSensesCard extends StatelessWidget {
  final HeadwordEntry headwordEntry;
  final Sense sense;
  final int senseNumber;
  final int totalSenses;
  final String heading;
  final String etymologyText;
  final int headwordEntryNumber;

  const EtymologyAndSensesCard({
    Key? key,
    required this.headwordEntry,
    this.sense,
    required this.headwordEntryNumber,
    this.senseNumber,
    this.totalSenses,
    this.heading,
    this.etymologyText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EtymologyAndSensesCardViewModel>.nonReactive(
      onModelReady: (model) => model.initialise(
        initialHeadwordEntry: headwordEntry,
        initialSense: sense,
        initialHeadwordEntryNumber: headwordEntryNumber,
      ),
      builder: (context, model, child) {
        final List<Widget> widgets = [];

        final hasAnyContentToDisplay = heading != null ||
            (sense != null &&
                (sense.regions != null ||
                    sense.registers != null ||
                    sense.definitions != null ||
                    sense.notes != null ||
                    etymologyText != null ||
                    sense.examples != null ||
                    sense.crossReferenceMarkers != null ||
                    sense.subsenses != null));

        if (!hasAnyContentToDisplay) {
          return Container();
        }

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
            Text('$senseNumber.', style: const TextStyle(fontWeight: FontWeight.bold)),
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
              if (note.type != EnumToString.convertToString(NoteTypeEnum.technicalNote)) {
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
            if (note.type == EnumToString.convertToString(NoteTypeEnum.technicalNote)) {
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
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  side: const BorderSide(color: colors.secondaryColorLight, width: 1.5),
                ),
                onPressed: model.navigateToSubsenseDetailsView,
                child: Row(
                  children: const <Widget>[
                    Text('Subsenses'),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              )
            ])
          ]);
        }

        return SizedBox(
          width: double.infinity,
          child: Card(
            margin: EdgeInsets.zero,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              side: BorderSide(color: colors.primaryColorLight),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widgets,
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => EtymologyAndSensesCardViewModel(),
    );
  }
}
