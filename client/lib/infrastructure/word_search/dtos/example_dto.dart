import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/word_search/entities/example.dart';
import '../../core/dtos/id_text_dto.dart';

part 'example_dto.freezed.dart';
part 'example_dto.g.dart';

@freezed
class ExampleDto with _$ExampleDto {
  const factory ExampleDto({
    required String text,
    List<String>? definitions,
    List<IdTextDto>? registers,
  }) = _ExampleDto;

  factory ExampleDto.fromDomain(Example example) {
    return ExampleDto(
      text: example.text,
      definitions: example.definitions?.asList(),
      registers: example.registers?.map((register) => IdTextDto.fromDomain(register)).asList(),
    );
  }

  factory ExampleDto.fromJson(Map<String, dynamic> json) => _$ExampleDtoFromJson(json);

  factory ExampleDto.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    final definitions = customFieldValues['definitions'] as List<String>;
    final registers = customFieldValues['registers'] as List<IdTextDto>;
    final text = customFieldValues['text'] as String;

    return ExampleDto(
      definitions: definitions,
      registers: registers,
      text: text,
    );
  }
}

extension ExampleDtoX on ExampleDto {
  Example toDomain() {
    return Example(
      text: text,
      definitions: definitions?.toImmutableList(),
      registers: registers?.map((register) => register.toDomain()).toImmutableList(),
    );
  }
}
