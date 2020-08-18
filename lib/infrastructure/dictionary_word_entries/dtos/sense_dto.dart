import 'package:dr_words/domain/dictionary_word_entries/entities/sense.dart';
import 'package:dr_words/infrastructure/core/dtos/id_text_dto.dart';
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
    List<IdTextDto> registers,
    List<IdTextDto> regions,
    List<String> crossReferenceMarkers,
    String type,
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
  }) {
    final List<String> definitions = customFieldValues['definitions'] as List<String>;
    final List<TextTypeDto> notes = customFieldValues['notes'] as List<TextTypeDto>;
    final List<ExampleDto> examples = customFieldValues['examples'] as List<ExampleDto>;
    final List<SenseDto> subsenses = customFieldValues['subsenses'] as List<SenseDto>;
    final List<IdTextDto> registers = customFieldValues['registers'] as List<IdTextDto>;
    final List<IdTextDto> regions = customFieldValues['regions'] as List<IdTextDto>;
    final List<String> crossReferenceMarkers = customFieldValues['crossReferenceMarkers'] as List<String>;
    final String type = customFieldValues['type'] as String;

    return SenseDto(
      definitions: definitions,
      notes: notes,
      examples: examples,
      subsenses: subsenses,
      registers: registers,
      regions: regions,
      crossReferenceMarkers: crossReferenceMarkers,
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
      regions: regions?.map((region) => region.toDomain())?.toImmutableList(),
      crossReferenceMarkers: crossReferenceMarkers?.toImmutableList(),
    );
  }
}
