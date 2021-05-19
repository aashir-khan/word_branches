import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/word_search/entities/entry.dart';
import 'pronunciation_dto.dart';
import 'sense_dto.dart';

part 'entry_dto.freezed.dart';
part 'entry_dto.g.dart';

@freezed
class EntryDto with _$EntryDto {
  const factory EntryDto({
    List<String>? etymologies,
    required List<SenseDto> senses,
    List<PronunciationDto>? pronunciations,
  }) = _EntryDto;

  factory EntryDto.fromDomain(Entry entry) {
    return EntryDto(
      etymologies: entry.etymologies?.asList(),
      senses: entry.senses.map((sense) => SenseDto.fromDomain(sense)).asList(),
      pronunciations: entry.pronunciations?.map((pronunciation) => PronunciationDto.fromDomain(pronunciation)).asList(),
    );
  }

  factory EntryDto.fromJson(Map<String, dynamic> json) => _$EntryDtoFromJson(json);
}

extension EntryDtoX on EntryDto {
  Entry toDomain() {
    return Entry(
      etymologies: etymologies?.toImmutableList(),
      senses: senses.map((sense) => sense.toDomain()).toImmutableList(),
      pronunciations: pronunciations?.map((pronunciation) => pronunciation.toDomain()).toImmutableList(),
    );
  }
}

extension EntryDtoFixture on EntryDto {
  static _EntryDtoFixtureFactory factory() => _EntryDtoFixtureFactory();
}

class _EntryDtoFixtureFactory extends FixtureFactory<EntryDto> {
  @override
  FixtureDefinition<EntryDto> definition() => define(
        (faker) => const EntryDto(
          senses: [],
        ),
      );

  FixtureDefinition<EntryDto> withEtymologies({int totalCount = 1}) => redefine(
        (dto) {
          return dto.copyWith(
            etymologies: Iterable<int>.generate(totalCount)
                .map(
                  (_) => faker.lorem.sentence(),
                )
                .toList(),
          );
        },
      );

  FixtureDefinition<EntryDto> withSenses({int totalCount = 1}) => redefine(
        (dto) {
          return dto.copyWith(
            senses: SenseDtoFixture.factory().makeMany(totalCount),
          );
        },
      );

  FixtureDefinition<EntryDto> withPronunciations({int totalCount = 1}) => redefine(
        (dto) {
          return dto.copyWith(
            pronunciations: Iterable<int>.generate(totalCount)
                .map(
                  (_) =>
                      const PronunciationDto(audioFile: 'https://audio.oxforddictionaries.com/en/mp3/pop_1_gb_1.mp3'),
                )
                .toList(),
          );
        },
      );

  FixtureDefinition<EntryDto> withCustomFields({
    List<SenseDto>? senses,
    List<String>? etymologies,
  }) =>
      redefine(
        (dto) => dto.copyWith(
          senses: senses ?? dto.senses,
          etymologies: etymologies ?? dto.etymologies,
        ),
      );
}
