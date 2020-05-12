import 'package:dr_words/features/word_details/data/models/lexical_entry_model.dart';
import 'package:dr_words/features/word_details/data/models/pronunciation_model.dart';
import 'package:dr_words/features/word_details/domain/entities/headword_entry.dart';
import 'package:dr_words/features/word_details/domain/entities/lexical_entry.dart';
import 'package:dr_words/features/word_details/domain/entities/pronunciation.dart';
import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';

class HeadwordEntryModel extends HeadwordEntry {
  const HeadwordEntryModel({
    @required String id,
    @required String language,
    @required List<LexicalEntry> lexicalEntries,
    List<Pronunciation> pronunciations,
    String type,
  }) : super(
          id: id,
          language: language,
          lexicalEntries: lexicalEntries,
          pronunciations: pronunciations,
          type: type,
        );

  factory HeadwordEntryModel.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    final defaultType = faker.lorem.word();

    final Map<String, dynamic> defaultFieldValues = {
      'id': defaultType,
      'language': faker.lorem.word(),
      'lexicalEntries':
          List<LexicalEntry>.generate(faker.randomGenerator.integer(10), (index) => LexicalEntryModel.fromFakeData()),
      'pronunciations':
          List<Pronunciation>.generate(faker.randomGenerator.integer(10), (index) => PronunciationModel.fromFakeData()),
      'type': defaultType,
    };

    final id = (customFieldValues['id'] ?? defaultFieldValues['id']) as String;
    final language = (customFieldValues['language'] ?? defaultFieldValues['language']) as String;
    final lexicalEntries =
        (customFieldValues['lexicalEntries'] ?? defaultFieldValues['lexicalEntries']) as List<LexicalEntry>;
    final pronunciations =
        (customFieldValues['pronunciations'] ?? defaultFieldValues['pronunciations']) as List<Pronunciation>;
    final type = (customFieldValues['type'] ?? defaultFieldValues['type']) as String;

    return HeadwordEntryModel(
      id: id,
      language: language,
      lexicalEntries: lexicalEntries,
      pronunciations: pronunciations,
      type: type,
    );
  }
}
