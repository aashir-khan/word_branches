import 'package:dr_words/features/word_details/domain/entities/id_text_type.dart';
import 'package:flutter/foundation.dart';
import 'package:faker/faker.dart';

class IdTextTypeModel extends IdTextType {
  const IdTextTypeModel({
    @required String id,
    @required String text,
    @required String type,
  }) : super(
          id: id,
          text: text,
          type: type,
        );

  factory IdTextTypeModel.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    final defaultText = faker.lorem.word();

    final Map<String, dynamic> defaultFieldValues = {
      'id': defaultText,
      'text': defaultText,
      'type': defaultText,
    };

    final id = (customFieldValues['id'] ?? defaultFieldValues['id']) as String;
    final text = (customFieldValues['text'] ?? defaultFieldValues['text']) as String;
    final type = (customFieldValues['type'] ?? defaultFieldValues['type']) as String;

    return IdTextTypeModel(
      id: id,
      text: text,
      type: type,
    );
  }
}
