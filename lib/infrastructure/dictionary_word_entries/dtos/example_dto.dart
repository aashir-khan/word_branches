import 'package:dr_words/domain/dictionary_word_entries/entities/example.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'example_dto.g.dart';
part 'example_dto.freezed.dart';

@freezed
abstract class ExampleDto with _$ExampleDto {
  const factory ExampleDto({
    @required String text,
    List<String> definitions,
    List<String> registers,
  }) = _ExampleDto;

  factory ExampleDto.fromDomain(Example example) {
    return ExampleDto(
      text: example.text,
      definitions: example.definitions.asList(),
      registers: example.registers.asList(),
    );
  }

  factory ExampleDto.fromJson(Map<String, dynamic> json) => _$ExampleDtoFromJson(json);
}

extension ExampleDtoX on ExampleDto {
  Example toDomain() {
    return Example(
      text: text,
      definitions: definitions.toImmutableList(),
      registers: registers.toImmutableList(),
    );
  }
}
