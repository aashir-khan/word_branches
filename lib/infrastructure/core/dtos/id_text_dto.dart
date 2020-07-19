import 'package:dr_words/domain/core/entities/id_text.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:faker/faker.dart';

part 'id_text_dto.freezed.dart';
part 'id_text_dto.g.dart';

@freezed
abstract class IdTextDto with _$IdTextDto {
  const factory IdTextDto({
    @required String id,
    @required String text,
  }) = _IdTextDto;

  factory IdTextDto.fromDomain(IdText idText) {
    return IdTextDto(id: idText.id, text: idText.text);
  }

  factory IdTextDto.fromJson(Map<String, dynamic> json) => _$IdTextDtoFromJson(json);

  factory IdTextDto.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    final defaultText = faker.lorem.word();

    final id = (customFieldValues['id'] ?? defaultText) as String;
    final text = (customFieldValues['text'] ?? defaultText) as String;

    return IdTextDto(id: id, text: text);
  }
}

extension IdTextDtoX on IdTextDto {
  IdText toDomain() {
    return IdText(id: id, text: text);
  }
}
