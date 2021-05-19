import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:data_fixture_dart/data_fixture_dart.dart';

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
}

extension TextTypeDtoX on TextTypeDto {
  TextType toDomain() {
    return TextType(
      text: text,
      type: type,
    );
  }
}

extension TextTypeDtoFixture on TextTypeDto {
  static _TextTypeDtoFixtureFactory factory() => _TextTypeDtoFixtureFactory();
}

class _TextTypeDtoFixtureFactory extends FixtureFactory<TextTypeDto> {
  @override
  FixtureDefinition<TextTypeDto> definition() => define(
        (faker) {
          final fakeText = faker.lorem.word();

          return TextTypeDto(
            text: fakeText,
            type: fakeText,
          );
        },
      );

  FixtureDefinition<TextTypeDto> withCustomFields({String? text, String? type}) => redefine(
        (dto) => dto.copyWith(
          text: text ?? dto.text,
          type: type ?? dto.type,
        ),
      );
}
