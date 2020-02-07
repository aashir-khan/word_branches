import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:flutter/foundation.dart';
import 'package:faker/faker.dart';

class DictionaryWordModel extends DictionaryWord {
  DictionaryWordModel({
    @required String id,
    @required String label,
  }) : super(id: id, label: label);

  factory DictionaryWordModel.fromJson(Map<String, dynamic> json) {
    return DictionaryWordModel(
      id: json['id'],
      label: json['label'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
    };
  }

  factory DictionaryWordModel.fromFakeData({
    Map<String, dynamic> customFieldValues = const {},
    Map<String, dynamic> options = const {},
    List<dynamic> traits = const [],
  }) {
    final defaultLabel = faker.lorem.word();

    Map<String, dynamic> defaultFieldValues = {'id': defaultLabel, 'label': defaultLabel};

    final id = customFieldValues['id'] ?? defaultFieldValues['id'];
    final label = customFieldValues['label'] ?? defaultFieldValues['label'];

    return DictionaryWordModel(id: id, label: label);
  }
}
