import 'package:dr_words/features/word_details/domain/entities/id_text_type.dart';
import 'package:flutter/foundation.dart';
import 'package:faker/faker.dart';

class IdTextTypeModel extends IdTextType {
  IdTextTypeModel({
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

    Map<String, dynamic> defaultFieldValues = {
      'id': defaultText,
      'text': defaultText,
      'type': defaultText,
    };

    final id = customFieldValues['id'] ?? defaultFieldValues['id'];
    final text = customFieldValues['text'] ?? defaultFieldValues['text'];
    final type = customFieldValues['type'] ?? defaultFieldValues['type'];

    return IdTextTypeModel(
      id: id,
      text: text,
      type: type,
    );
  }
}
