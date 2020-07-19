import 'package:dr_words/domain/dictionary_word_entries/entities/sense.dart';
import 'package:dr_words/infrastructure/core/dtos/id_text_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/example_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/text_type_dto.dart';
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
    String type,
  }) = _SenseDto;

  factory SenseDto.fromDomain(Sense sense) {
    return SenseDto(
      definitions: sense.definitions.asList(),
      notes: sense.notes.map((textType) => TextTypeDto.fromDomain(textType)).asList(),
      examples: sense.examples.map((example) => ExampleDto.fromDomain(example)).asList(),
      subsenses: sense.subsenses.map((sense) => SenseDto.fromDomain(sense)).asList(),
      registers: sense.registers.map((sense) => IdTextDto.fromDomain(sense)).asList(),
    );
  }

  factory SenseDto.fromJson(Map<String, dynamic> json) => _$SenseDtoFromJson(json);

  factory SenseDto.fromFakeData({
    Map<String, dynamic> customFieldValues = const {},
    Map<String, dynamic> options = const {},
  }) {
    List<String> definitions;
    List<TextTypeDto> notes;
    List<ExampleDto> examples;
    List<SenseDto> subsenses;
    List<IdTextDto> registers;
    String type;

    final definitionsCount = (options['definitionsCount'] ?? faker.randomGenerator.integer(5)) as int;
    final notesCount = (options['notesCount'] ?? faker.randomGenerator.integer(5)) as int;
    final examplesCount = (options['examplesCount'] ?? faker.randomGenerator.integer(5)) as int;
    final subsensesCount = (options['subsensesCount'] ?? faker.randomGenerator.integer(5)) as int;
    final registersCount = (options['registersCount'] ?? faker.randomGenerator.integer(5)) as int;

    if (customFieldValues['definitions'] != null) {
      definitions = customFieldValues['definitions'] as List<String>;
    } else {
      for (var i = 0; i < definitionsCount; i++) {
        definitions.add(faker.lorem.sentence());
      }
    }

    if (customFieldValues['registers'] != null) {
      registers = customFieldValues['registers'] as List<IdTextDto>;
    } else {
      for (var i = 0; i < registersCount; i++) {
        registers
            .add(IdTextDto.fromFakeData(customFieldValues: (customFieldValues['notes'] ?? {}) as Map<String, dynamic>));
      }
    }

    if (customFieldValues['notes'] != null) {
      notes = customFieldValues['notes'] as List<TextTypeDto>;
    } else {
      for (var i = 0; i < notesCount; i++) {
        notes.add(
            TextTypeDto.fromFakeData(customFieldValues: (customFieldValues['notes'] ?? {}) as Map<String, dynamic>));
      }
    }

    if (customFieldValues['examples'] != null) {
      examples = customFieldValues['examples'] as List<ExampleDto>;
    } else {
      for (var i = 0; i < examplesCount; i++) {
        examples.add(
          ExampleDto.fromFakeData(
              customFieldValues: (customFieldValues['examples'] ?? {}) as Map<String, dynamic>,
              options: (customFieldValues['examplesOptions'] ?? {}) as Map<String, dynamic>),
        );
      }
    }

    if (customFieldValues['subsenses'] != null) {
      subsenses = customFieldValues['subsenses'] as List<SenseDto>;
    } else {
      for (var i = 0; i < subsensesCount; i++) {
        subsenses.add(
          SenseDto.fromFakeData(
              customFieldValues: (customFieldValues['subsenses'] ?? {}) as Map<String, dynamic>,
              options: (customFieldValues['subsensesOptions'] ?? {}) as Map<String, dynamic>),
        );
      }
    }

    type = (customFieldValues['type'] ?? faker.lorem.word()) as String;

    return SenseDto(
      definitions: definitions,
      notes: notes,
      examples: examples,
      subsenses: subsenses,
      registers: registers,
      type: type,
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
    );
  }
}
