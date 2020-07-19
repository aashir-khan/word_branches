import 'package:dr_words/domain/dictionary_word_entries/entities/example.dart';
import 'package:dr_words/infrastructure/core/dtos/id_text_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:faker/faker.dart';

part 'example_dto.g.dart';
part 'example_dto.freezed.dart';

@freezed
abstract class ExampleDto with _$ExampleDto {
  const factory ExampleDto({
    @required String text,
    List<String> definitions,
    List<IdTextDto> registers,
  }) = _ExampleDto;

  factory ExampleDto.fromDomain(Example example) {
    return ExampleDto(
      text: example.text,
      definitions: example.definitions.asList(),
      registers: example.registers.map((register) => IdTextDto.fromDomain(register)).asList(),
    );
  }

  factory ExampleDto.fromJson(Map<String, dynamic> json) => _$ExampleDtoFromJson(json);

  factory ExampleDto.fromFakeData({
    Map<String, dynamic> customFieldValues = const {},
    Map<String, dynamic> options = const {},
  }) {
    List<String> definitions = [];
    List<IdTextDto> registers = [];
    String text;

    final definitionsCount = (options['definitionsCount'] ?? faker.randomGenerator.integer(5)) as int;
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
        registers.add(
            IdTextDto.fromFakeData(customFieldValues: (customFieldValues['idText'] ?? {}) as Map<String, dynamic>));
      }
    }

    text = (customFieldValues['text'] ?? faker.lorem.word()) as String;

    return ExampleDto(definitions: definitions, registers: registers, text: text);
  }
}

extension ExampleDtoX on ExampleDto {
  Example toDomain() {
    return Example(
      text: text,
      definitions: definitions?.toImmutableList(),
      registers: registers?.map((register) => register.toDomain())?.toImmutableList(),
    );
  }
}
