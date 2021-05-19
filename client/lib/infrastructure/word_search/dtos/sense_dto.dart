import 'package:enum_to_string/enum_to_string.dart';
import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/word_search/entities/sense.dart';
import '../../core/dtos/id_text_dto.dart';
import 'example_dto.dart';
import 'text_type_dto.dart';

part 'sense_dto.freezed.dart';
part 'sense_dto.g.dart';

@freezed
class SenseDto with _$SenseDto {
  const factory SenseDto({
    List<String>? definitions,
    List<TextTypeDto>? notes,
    List<ExampleDto>? examples,
    List<SenseDto>? subsenses,
    List<IdTextDto>? registers,
    List<IdTextDto>? regions,
    List<String>? crossReferenceMarkers,
  }) = _SenseDto;

  factory SenseDto.fromDomain(Sense sense) {
    return SenseDto(
        definitions: sense.definitions?.asList(),
        notes: sense.notes?.map((textType) => TextTypeDto.fromDomain(textType)).asList(),
        examples: sense.examples?.map((example) => ExampleDto.fromDomain(example)).asList(),
        subsenses: sense.subsenses?.map((sense) => SenseDto.fromDomain(sense)).asList(),
        registers: sense.registers?.map((register) => IdTextDto.fromDomain(register)).asList(),
        regions: sense.regions?.map((region) => IdTextDto.fromDomain(region)).asList(),
        crossReferenceMarkers: sense.crossReferenceMarkers?.asList());
  }

  factory SenseDto.fromJson(Map<String, dynamic> json) => _$SenseDtoFromJson(json);
}

extension SenseDtoX on SenseDto {
  Sense toDomain() {
    return Sense(
      definitions: definitions?.toImmutableList(),
      notes: notes?.map((note) => note.toDomain()).toImmutableList(),
      examples: examples?.map((example) => example.toDomain()).toImmutableList(),
      subsenses: subsenses?.map((subsense) => subsense.toDomain()).toImmutableList(),
      registers: registers?.map((register) => register.toDomain()).toImmutableList(),
      regions: regions?.map((region) => region.toDomain()).toImmutableList(),
      crossReferenceMarkers: crossReferenceMarkers?.toImmutableList(),
    );
  }
}

extension SenseDtoFixture on SenseDto {
  static _SenseDtoFixtureFactory factory() => _SenseDtoFixtureFactory();
}

class _SenseDtoFixtureFactory extends FixtureFactory<SenseDto> {
  @override
  FixtureDefinition<SenseDto> definition() => define(
        (faker) => const SenseDto(),
      );

  FixtureDefinition<SenseDto> withDefinitions({int totalCount = 1}) => redefine(
        (dto) {
          return dto.copyWith(
            definitions: Iterable<int>.generate(totalCount)
                .map(
                  (_) => faker.lorem.sentence(),
                )
                .toList(),
          );
        },
      );

  FixtureDefinition<SenseDto> withNotes({int totalCount = 1}) => redefine(
        (dto) {
          return dto.copyWith(
            notes: TextTypeDtoFixture.factory()
                .withCustomFields(
                  type: EnumToString.convertToString(NoteTypeEnum.technicalNote),
                  text: faker.lorem.sentence(),
                )
                .makeMany(totalCount),
          );
        },
      );

  FixtureDefinition<SenseDto> withExamples({int totalCount = 1}) => redefine(
        (dto) {
          return dto.copyWith(
            examples: ExampleDtoFixture.factory()
                .withCustomFields(
                  text: faker.lorem.sentence(),
                )
                .makeMany(totalCount),
          );
        },
      );

  FixtureDefinition<SenseDto> withSubsenses({int totalCount = 1}) => redefine(
        (dto) {
          return dto.copyWith(
            subsenses: SenseDtoFixture.factory().makeMany(totalCount),
          );
        },
      );
}
