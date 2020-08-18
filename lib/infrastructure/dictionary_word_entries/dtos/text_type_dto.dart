import 'package:dr_words/domain/dictionary_word_entries/entities/text_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_type_dto.g.dart';
part 'text_type_dto.freezed.dart';

@freezed
abstract class TextTypeDto with _$TextTypeDto {
  const factory TextTypeDto({
    String text,
    String type,
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
