import 'package:dr_words/features/word_details/data/models/id_text_model.dart';
import 'package:dr_words/features/word_details/domain/entities/id_text.dart';
import 'package:dr_words/features/word_details/domain/entities/related_entry.dart';
import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';

class RelatedEntryModel extends RelatedEntry {
  RelatedEntryModel({
    @required String id,
    @required String language,
    List<IdText> domains,
    List<IdText> regions,
    List<IdText> registers,
    String text,
  }) : super(
          id: id,
          language: language,
          domains: domains,
          regions: regions,
          registers: registers,
          text: text,
        );

  factory RelatedEntryModel.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    final defaultText = faker.lorem.word();
    Map<String, dynamic> defaultFieldValues = {
      'id': defaultText,
      'language': faker.lorem.word(),
      'domains': List<IdText>.generate(faker.randomGenerator.integer(10), (index) => IdTextModel.fromFakeData()),
      'regions': List<IdText>.generate(faker.randomGenerator.integer(10), (index) => IdTextModel.fromFakeData()),
      'registers': List<IdText>.generate(faker.randomGenerator.integer(10), (index) => IdTextModel.fromFakeData()),
      'text': defaultText,
    };

    final id = customFieldValues['id'] ?? defaultFieldValues['id'];
    final language = customFieldValues['language'] ?? defaultFieldValues['language'];
    final domains = customFieldValues['domains'] ?? defaultFieldValues['domains'];
    final regions = customFieldValues['regions'] ?? defaultFieldValues['regions'];
    final registers = customFieldValues['registers'] ?? defaultFieldValues['registers'];
    final text = customFieldValues['text'] ?? defaultFieldValues['text'];

    return RelatedEntryModel(
      id: id,
      language: language,
      domains: domains,
      regions: regions,
      registers: registers,
      text: text,
    );
  }
}
