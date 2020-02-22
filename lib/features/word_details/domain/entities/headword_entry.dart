import 'package:dr_words/features/word_details/domain/entities/lexical_entry.dart';
import 'package:dr_words/features/word_details/domain/entities/pronunciation.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class HeadwordEntry extends Equatable {
  final String id;
  final String language;
  final List<LexicalEntry> lexicalEntries;
  final List<Pronunciation> pronunciations;
  final String type;

  HeadwordEntry({
    @required this.id,
    @required this.language,
    @required this.lexicalEntries,
    this.pronunciations,
    this.type,
  });

  @override
  List<Object> get props => [
        id,
        language,
        lexicalEntries,
        pronunciations,
        type,
      ];
}
