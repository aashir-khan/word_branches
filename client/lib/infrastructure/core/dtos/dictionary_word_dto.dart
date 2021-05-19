import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:data_fixture_dart/data_fixture_dart.dart';

import '../../../domain/core/entities/dictionary_word.dart';

part 'dictionary_word_dto.freezed.dart';
part 'dictionary_word_dto.g.dart';

@freezed
class DictionaryWordDto with _$DictionaryWordDto {
  factory DictionaryWordDto({
    required String id,
    required String label,
  }) = _DictionaryWordDto;

  factory DictionaryWordDto.fromDomain(DictionaryWord dictionaryWord) {
    return DictionaryWordDto(
      id: dictionaryWord.id,
      label: dictionaryWord.label,
    );
  }

  factory DictionaryWordDto.fromJson(Map<String, dynamic> json) => _$DictionaryWordDtoFromJson(json);
}

extension DictionaryWordDtoX on DictionaryWordDto {
  DictionaryWord toDomain() {
    return DictionaryWord(
      id: id,
      label: label,
    );
  }
}

extension DictionaryWordDtoFixture on DictionaryWordDto {
  static _DictionaryWordDtoFixtureFactory factory() => _DictionaryWordDtoFixtureFactory();
}

class _DictionaryWordDtoFixtureFactory extends FixtureFactory<DictionaryWordDto> {
  @override
  FixtureDefinition<DictionaryWordDto> definition() => define(
        (faker) {
          final fakeLabel = faker.lorem.word();

          return DictionaryWordDto(
            id: fakeLabel,
            label: fakeLabel,
          );
        },
      );
}
