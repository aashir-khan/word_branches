import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/word_search/entities/id_text.dart';

part 'id_text_dto.freezed.dart';
part 'id_text_dto.g.dart';

@freezed
class IdTextDto with _$IdTextDto {
  const factory IdTextDto({
    required String id,
    required String text,
  }) = _IdTextDto;

  factory IdTextDto.fromDomain(IdText idText) {
    return IdTextDto(id: idText.id, text: idText.text);
  }

  factory IdTextDto.fromJson(Map<String, dynamic> json) => _$IdTextDtoFromJson(json);
}

extension IdTextDtoX on IdTextDto {
  IdText toDomain() {
    return IdText(id: id, text: text);
  }
}

extension IdTextDtoFixture on IdTextDto {
  static _IdTextDtoFixtureFactory factory() => _IdTextDtoFixtureFactory();
}

class _IdTextDtoFixtureFactory extends FixtureFactory<IdTextDto> {
  @override
  FixtureDefinition<IdTextDto> definition() => define(
        (faker) {
          final fakeText = faker.lorem.word();

          return IdTextDto(
            id: fakeText,
            text: fakeText,
          );
        },
      );
}
