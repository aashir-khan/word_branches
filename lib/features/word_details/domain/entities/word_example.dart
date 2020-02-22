import 'package:dr_words/features/word_details/domain/entities/id_text.dart';
import 'package:dr_words/features/word_details/domain/entities/id_text_type.dart';
import 'package:equatable/equatable.dart';

class WordExample extends Equatable {
  final List<String> definitions;
  final List<IdText> domainsList;
  final List<IdTextType> notes;
  final List<IdText> regions;
  final List<IdText> senseIds;
  final String text;

  WordExample({
    this.definitions,
    this.domainsList,
    this.notes,
    this.regions,
    this.senseIds,
    this.text,
  });

  @override
  List<Object> get props => [
        definitions,
        domainsList,
        notes,
        regions,
        senseIds,
        text,
      ];
}
