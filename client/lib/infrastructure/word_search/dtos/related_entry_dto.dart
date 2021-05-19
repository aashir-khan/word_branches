import 'package:data_fixture_dart/data_fixture_dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/word_search/entities/related_entry.dart';

part 'related_entry_dto.freezed.dart';
part 'related_entry_dto.g.dart';

@freezed
class RelatedEntryDto with _$RelatedEntryDto {
  const factory RelatedEntryDto({
    required String id,
    required String text,
  }) = _RelatedEntryDto;

  factory RelatedEntryDto.fromDomain(RelatedEntry relatedEntry) {
    return RelatedEntryDto(
      id: relatedEntry.id,
      text: relatedEntry.text,
    );
  }

  factory RelatedEntryDto.fromJson(Map<String, dynamic> json) => _$RelatedEntryDtoFromJson(json);
}

extension RelatedEntryDtoX on RelatedEntryDto {
  RelatedEntry toDomain() {
    return RelatedEntry(
      id: id,
      text: text,
    );
  }
}

extension RelatedEntryDtoFixture on RelatedEntryDto {
  static _RelatedEntryDtoFixtureFactory factory() => _RelatedEntryDtoFixtureFactory();
}

class _RelatedEntryDtoFixtureFactory extends FixtureFactory<RelatedEntryDto> {
  @override
  FixtureDefinition<RelatedEntryDto> definition() => define(
        (faker) {
          final fakeText = faker.lorem.word();

          return RelatedEntryDto(
            id: fakeText,
            text: fakeText,
          );
        },
      );
}
