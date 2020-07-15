import 'package:dr_words/domain/dictionary_word_entries/entities/sense.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/example_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/text_type_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'sense_dto.g.dart';
part 'sense_dto.freezed.dart';

@freezed
abstract class SenseDto with _$SenseDto {
  const factory SenseDto({
    List<String> definitions,
    List<TextTypeDto> notes,
    List<ExampleDto> examples,
    List<SenseDto> subsenses,
    List<String> registers,
    String type,
  }) = _SenseDto;

  factory SenseDto.fromDomain(Sense sense) {
    return SenseDto(
      definitions: sense.definitions.asList(),
      notes: sense.notes.mapIndexed((_, textType) => TextTypeDto.fromDomain(textType)).asList(),
      examples: sense.examples.mapIndexed((_, example) => ExampleDto.fromDomain(example)).asList(),
      subsenses: sense.subsenses.mapIndexed((_, sense) => SenseDto.fromDomain(sense)).asList(),
      registers: sense.registers.asList(),
    );
  }

  factory SenseDto.fromJson(Map<String, dynamic> json) => _$SenseDtoFromJson(json);
}

extension SenseDtoX on SenseDto {
  Sense toDomain() {
    return Sense(
      definitions: definitions.toImmutableList(),
      notes: notes.map((notes) => notes.toDomain()).toImmutableList(),
      examples: examples.map((examples) => examples.toDomain()).toImmutableList(),
      subsenses: subsenses.map((subsenses) => subsenses.toDomain()).toImmutableList(),
      registers: registers.toImmutableList(),
    );
  }
}
