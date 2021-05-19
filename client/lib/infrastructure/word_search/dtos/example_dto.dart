import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:data_fixture_dart/data_fixture_dart.dart';

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

extension ExampleDtoFixture on ExampleDto {
  static _ExampleDtoFixtureFactory factory() => _ExampleDtoFixtureFactory();
}

class _ExampleDtoFixtureFactory extends FixtureFactory<ExampleDto> {
  @override
  FixtureDefinition<ExampleDto> definition() => define(
        (faker) {
          return ExampleDto(
            text: faker.lorem.word(),
          );
        },
      );

  FixtureDefinition<ExampleDto> withCustomFields({
    String? text,
    List<String>? definitions,
    List<IdTextDto>? registers,
  }) =>
      redefine(
        (dto) => dto.copyWith(
          text: text ?? dto.text,
          definitions: definitions ?? dto.definitions,
          registers: registers ?? dto.registers,
        ),
      );
}
