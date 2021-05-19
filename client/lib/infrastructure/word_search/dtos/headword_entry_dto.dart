import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../../domain/word_search/entities/headword_entry.dart';
import 'lexical_entry_dto.dart';

part 'headword_entry_dto.freezed.dart';
part 'headword_entry_dto.g.dart';

@freezed
class HeadwordEntryDto with _$HeadwordEntryDto {
  factory HeadwordEntryDto({
    required String id,
    required List<LexicalEntryDto> lexicalEntries,
  }) = _HeadwordEntryDto;

  factory HeadwordEntryDto.fromDomain(HeadwordEntry headwordEntry) {
    return HeadwordEntryDto(
      id: headwordEntry.id,
      lexicalEntries:
          headwordEntry.lexicalEntries.map((lexicalEntry) => LexicalEntryDto.fromDomain(lexicalEntry)).asList(),
    );
  }

  factory HeadwordEntryDto.fromJson(Map<String, dynamic> json) => _$HeadwordEntryDtoFromJson(json);
}

extension HeadwordEntryDtoX on HeadwordEntryDto {
  HeadwordEntry toDomain() {
    return HeadwordEntry(
      id: id,
      lexicalEntries: lexicalEntries.map((lexicalEntry) => lexicalEntry.toDomain()).toImmutableList(),
    );
  }
}

extension HeadwordEntryDtoFixture on HeadwordEntryDto {
  static _HeadwordEntryDtoFixtureFactory factory() => _HeadwordEntryDtoFixtureFactory();
}

class _HeadwordEntryDtoFixtureFactory extends FixtureFactory<HeadwordEntryDto> {
  @override
  FixtureDefinition<HeadwordEntryDto> definition() => define(
        (faker) {
          return HeadwordEntryDto(
            id: faker.lorem.word(),
            lexicalEntries: [],
          );
        },
      );

  FixtureDefinition<HeadwordEntryDto> withLexicalEntries({int totalCount = 1}) => redefine(
        (dto) {
          return dto.copyWith(
            lexicalEntries: LexicalEntryDtoFixture.factory().makeMany(totalCount),
          );
        },
      );

  FixtureDefinition<HeadwordEntryDto> withCustomFields({
    String? id,
    List<LexicalEntryDto>? lexicalEntries,
  }) =>
      redefine(
        (dto) => dto.copyWith(
          id: id ?? dto.id,
          lexicalEntries: lexicalEntries ?? dto.lexicalEntries,
        ),
      );
}
