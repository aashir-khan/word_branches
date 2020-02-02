import 'package:dr_words/features/query_search/data/models/dictionary_word_model.dart';
import 'package:flutter/foundation.dart';
import 'package:faker/faker.dart';

class DictionaryWordModelFake extends DictionaryWordModel {
  DictionaryWordModelFake({
    @required String id,
    @required String label,
  }) : super(id: id, label: label);

  factory DictionaryWordModelFake.fromFakeData({
    Map<String, dynamic> customFieldValues = const {},
    Map<String, dynamic> options = const {},
    List<dynamic> traits = const [],
  }) {
    final defaultLabel = faker.lorem.word();

    Map<String, dynamic> defaultFieldValues = {
      'id': defaultLabel,
      'label': defaultLabel
    };

    final id = customFieldValues['id'] ?? defaultFieldValues['id'];
    final label = customFieldValues['label'] ?? defaultFieldValues['label'];

    return DictionaryWordModelFake(id: id, label: label);
  }
}
