import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:flutter/foundation.dart';

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
}
