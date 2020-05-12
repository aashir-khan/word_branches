import 'package:dr_words/features/word_details/domain/entities/id_text.dart';
import 'package:flutter/foundation.dart';
import 'package:faker/faker.dart';

class IdTextModel extends IdText {
  const IdTextModel({
    @required String id,
    @required String text,
  }) : super(id: id, text: text);

  factory IdTextModel.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    final defaultText = faker.lorem.word();

    final Map<String, dynamic> defaultFieldValues = {
      'id': defaultText,
      'text': defaultText,
    };

    final id = (customFieldValues['id'] ?? defaultFieldValues['id']) as String;
    final text = (customFieldValues['text'] ?? defaultFieldValues['text']) as String;

    return IdTextModel(id: id, text: text);
  }
}
