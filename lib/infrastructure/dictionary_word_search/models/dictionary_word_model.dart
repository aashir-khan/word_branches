import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:flutter/foundation.dart';
import 'package:faker/faker.dart';

class DictionaryWordModel extends DictionaryWord {
  const DictionaryWordModel({
    @required String id,
    @required String label,
  }) : super(id: id, label: label);

  factory DictionaryWordModel.fromJson(Map<String, dynamic> json) {
    return DictionaryWordModel(
      id: json['id'] as String,
      label: json['label'] as String,
    );
  }

  factory DictionaryWordModel.fromSuperclass(DictionaryWord dictionaryWord) {
    return DictionaryWordModel(
      id: dictionaryWord.id,
      label: dictionaryWord.label,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
    };
  }

  factory DictionaryWordModel.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    final defaultLabel = faker.lorem.word();

    final Map<String, dynamic> defaultFieldValues = {
      'id': defaultLabel,
      'label': defaultLabel,
    };

    final id = (customFieldValues['id'] ?? defaultFieldValues['id']) as String;
    final label = (customFieldValues['label'] ?? defaultFieldValues['label']) as String;

    return DictionaryWordModel(id: id, label: label);
  }
}
