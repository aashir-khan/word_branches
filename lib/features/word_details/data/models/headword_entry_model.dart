import 'package:dr_words/features/word_details/data/models/lexical_entry_model.dart';
import 'package:dr_words/features/word_details/data/models/pronunciation_model.dart';
import 'package:dr_words/features/word_details/domain/entities/headword_entry.dart';
import 'package:dr_words/features/word_details/domain/entities/lexical_entry.dart';
import 'package:dr_words/features/word_details/domain/entities/pronunciation.dart';
import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';

class HeadwordEntryModel extends HeadwordEntry {
  HeadwordEntryModel({
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

    Map<String, dynamic> defaultFieldValues = {
      'id': defaultType,
      'language': faker.lorem.word(),
      'lexicalEntries':
          List<LexicalEntry>.generate(faker.randomGenerator.integer(10), (index) => LexicalEntryModel.fromFakeData()),
      'pronunciations':
          List<Pronunciation>.generate(faker.randomGenerator.integer(10), (index) => PronunciationModel.fromFakeData()),
      'type': defaultType,
    };

    final id = customFieldValues['id'] ?? defaultFieldValues['id'];
    final language = customFieldValues['language'] ?? defaultFieldValues['language'];
    final lexicalEntries = customFieldValues['lexicalEntries'] ?? defaultFieldValues['lexicalEntries'];
    final pronunciations = customFieldValues['pronunciations'] ?? defaultFieldValues['pronunciations'];
    final type = customFieldValues['type'] ?? defaultFieldValues['type'];

    return HeadwordEntryModel(
      id: id,
      language: language,
      lexicalEntries: lexicalEntries,
      pronunciations: pronunciations,
      type: type,
    );
  }
}
