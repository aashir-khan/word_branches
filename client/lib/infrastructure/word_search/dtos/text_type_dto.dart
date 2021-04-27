import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/word_search/entities/text_type.dart';

part 'text_type_dto.freezed.dart';
part 'text_type_dto.g.dart';

@freezed
class TextTypeDto with _$TextTypeDto {
  const factory TextTypeDto({
    required String text,
    required String type,
  }) = _TextTypeDto;

  factory TextTypeDto.fromDomain(TextType textType) {
    return TextTypeDto(
      text: textType.text,
      type: textType.type,
    );
  }

  factory TextTypeDto.fromJson(Map<String, dynamic> json) => _$TextTypeDtoFromJson(json);

  factory TextTypeDto.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    final text = customFieldValues['text'] as String;
    final type = customFieldValues['type'] as String;

    return TextTypeDto(
      text: text,
      type: type,
    );
  }
}

extension TextTypeDtoX on TextTypeDto {
  TextType toDomain() {
    return TextType(
      text: text,
      type: type,
    );
  }
}
