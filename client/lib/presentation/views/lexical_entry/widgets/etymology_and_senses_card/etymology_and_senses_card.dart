import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../../domain/word_search/entities/headword_entry.dart';
import '../../../../../domain/word_search/entities/sense.dart';
import '../../../../core/constants/app_colors.dart' as colors;
import 'senses_card_viewmodel.dart';

class SensesCard extends StatelessWidget {
  final HeadwordEntry headwordEntry;
  final Sense sense;
  final int senseNumber;
  final int totalSenses;
  final int headwordEntryNumber;

  const SensesCard({
    Key? key,
    required this.headwordEntry,
    required this.sense,
    required this.headwordEntryNumber,
    required this.senseNumber,
    required this.totalSenses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SensesCardViewModel>.nonReactive(
      onModelReady: (model) => model.initialise(
        initialHeadwordEntry: headwordEntry,
        initialSense: sense,
        initialHeadwordEntryNumber: headwordEntryNumber,
      ),
      builder: (context, model, child) {
        final List<Widget> widgets = [];

        widgets.addAll([
          Text('$senseNumber.', style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
        ]);

        if (sense.regions != null || sense.registers != null || sense.definitions != null || sense.notes != null) {
          final List<Widget> _mainTextWidgets = [];

          if (sense.regions != null) {
            for (final region in sense.regions!.iter) {
              _mainTextWidgets.addAll(
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
              );
            }
          }

          if (sense.registers != null) {
            for (final register in sense.registers!.iter) {
              _mainTextWidgets.addAll(
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
              );
            }
          }

          if (sense.notes != null) {
            for (final note in sense.notes!.iter) {
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
            }
          }

          if (sense.definitions != null && !sense.definitions!.isEmpty()) {
            _mainTextWidgets.add(
              Text(sense.definitions!.get(0).capitalize(), textAlign: TextAlign.justify),
            );
          }

          widgets.add(Wrap(children: _mainTextWidgets));
        }

        if (sense.notes != null) {
          for (final note in sense.notes!.iter) {
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
          }
        }

        if (sense.examples != null && !sense.examples!.isEmpty()) {
          widgets.add(
            Text(
              sense.examples!.get(0).text.capitalize(),
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                fontFamily: 'RobotoMono',
                letterSpacing: -0.25,
              ),
            ),
          );
        }

        if (sense.crossReferenceMarkers != null) {
          for (final crossReferenceMarker in sense.crossReferenceMarkers!.iter) {
            widgets.add(
              Text(
                crossReferenceMarker,
                textAlign: TextAlign.justify,
              ),
            );
          }
        }

        if (sense.subsenses != null) {
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
      viewModelBuilder: () => SensesCardViewModel(),
    );
  }
}

class EtymologyCard extends StatelessWidget {
  final String heading;
  final String etymologyText;

  const EtymologyCard({
    Key? key,
    required this.heading,
    required this.etymologyText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
            children: [
              Text(
                heading,
                style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 8),
              Text(etymologyText.capitalize(), textAlign: TextAlign.justify),
            ],
          ),
        ),
      ),
    );
  }
}
