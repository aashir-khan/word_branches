import 'package:dr_words/domain/word_search/entities/sense.dart';
import 'package:dr_words/infrastructure/core/dtos/id_text_dto.dart';
import 'package:dr_words/infrastructure/word_search/dtos/example_dto.dart';
import 'package:dr_words/infrastructure/word_search/dtos/text_type_dto.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:faker/faker.dart';

part 'sense_dto.g.dart';
part 'sense_dto.freezed.dart';

@freezed
abstract class SenseDto with _$SenseDto {
  const factory SenseDto({
    List<String> definitions,
    List<TextTypeDto> notes,
    List<ExampleDto> examples,
    List<SenseDto> subsenses,
    List<IdTextDto> registers,
    List<IdTextDto> regions,
    List<String> crossReferenceMarkers,
  }) = _SenseDto;

  factory SenseDto.fromDomain(Sense sense) {
    return SenseDto(
        definitions: sense?.definitions?.asList(),
        notes: sense?.notes?.map((textType) => TextTypeDto.fromDomain(textType))?.asList(),
        examples: sense?.examples?.map((example) => ExampleDto.fromDomain(example))?.asList(),
        subsenses: sense?.subsenses?.map((sense) => SenseDto.fromDomain(sense))?.asList(),
        registers: sense?.registers?.map((register) => IdTextDto.fromDomain(register))?.asList(),
        regions: sense?.regions?.map((region) => IdTextDto.fromDomain(region))?.asList(),
        crossReferenceMarkers: sense?.crossReferenceMarkers?.asList());
  }

  factory SenseDto.fromJson(Map<String, dynamic> json) => _$SenseDtoFromJson(json);

  factory SenseDto.fromFakeData({
    Map<String, dynamic> customFieldValues = const {},
    List<String> traits = const [],
  }) {
    List<String> _definitions = customFieldValues['definitions'] as List<String>;
    List<TextTypeDto> _notes = customFieldValues['notes'] as List<TextTypeDto>;
    List<ExampleDto> _examples = customFieldValues['examples'] as List<ExampleDto>;
    List<SenseDto> _subsenses = customFieldValues['subsenses'] as List<SenseDto>;
    final List<IdTextDto> _registers = customFieldValues['registers'] as List<IdTextDto>;
    final List<IdTextDto> _regions = customFieldValues['regions'] as List<IdTextDto>;
    final List<String> _crossReferenceMarkers = customFieldValues['crossReferenceMarkers'] as List<String>;

    if (traits.contains('withDefinitions')) {
      _definitions = [];
      for (var i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) {
        _definitions.add(faker.lorem.sentence());
      }
    }

    if (traits.contains('withNotes')) {
      _notes = [];
      for (var i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) {
        _notes.add(TextTypeDto.fromFakeData(
          customFieldValues: {
            'type': EnumToString.parse(NoteTypeEnum.technicalNote),
            'text': faker.lorem.sentence(),
          },
        ));
      }
    }

    if (traits.contains('withExamples')) {
      _examples = [];
      for (var i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) {
        _examples.add(ExampleDto.fromFakeData(
          customFieldValues: {'text': faker.lorem.sentence()},
        ));
      }
    }

    if (traits.contains('withSubsenses')) {
      _subsenses = [];

      for (var i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) {
        final _subsensesTraitsList = List<String>.from(traits);
        _subsensesTraitsList.remove('withSubsenses');
        _subsenses.add(SenseDto.fromFakeData(customFieldValues: customFieldValues, traits: _subsensesTraitsList));
      }
    }

    return SenseDto(
      definitions: _definitions,
      notes: _notes,
      examples: _examples,
      subsenses: _subsenses,
      registers: _registers,
      regions: _regions,
      crossReferenceMarkers: _crossReferenceMarkers,
    );
  }
}

extension SenseDtoX on SenseDto {
  Sense toDomain() {
    return Sense(
      definitions: definitions?.toImmutableList(),
      notes: notes?.map((note) => note.toDomain())?.toImmutableList(),
      examples: examples?.map((example) => example.toDomain())?.toImmutableList(),
      subsenses: subsenses?.map((subsense) => subsense.toDomain())?.toImmutableList(),
      registers: registers?.map((register) => register.toDomain())?.toImmutableList(),
      regions: regions?.map((region) => region.toDomain())?.toImmutableList(),
      crossReferenceMarkers: crossReferenceMarkers?.toImmutableList(),
    );
  }
}
