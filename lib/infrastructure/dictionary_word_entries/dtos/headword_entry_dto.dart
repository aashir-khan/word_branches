import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/lexical_entry_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/pronunciation_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'headword_entry_dto.freezed.dart';
part 'headword_entry_dto.g.dart';

@freezed
abstract class HeadwordEntryDto with _$HeadwordEntryDto {
  factory HeadwordEntryDto({
    @required String id,
    @required List<LexicalEntryDto> lexicalEntries,
    List<PronunciationDto> pronunciations,
  }) = _HeadwordEntryDto;

  factory HeadwordEntryDto.fromDomain(HeadwordEntry headwordEntry) {
    return HeadwordEntryDto(
      id: headwordEntry.id,
      lexicalEntries:
          headwordEntry.lexicalEntries.map((lexicalEntry) => LexicalEntryDto.fromDomain(lexicalEntry)).asList(),
      pronunciations:
          headwordEntry.pronunciations.map((pronunciation) => PronunciationDto.fromDomain(pronunciation)).asList(),
    );
  }

  factory HeadwordEntryDto.fromJson(Map<String, dynamic> json) => _$HeadwordEntryDtoFromJson(json);
}

extension HeadwordEntryDtoX on HeadwordEntryDto {
  HeadwordEntry toDomain() {
    return HeadwordEntry(
      id: id,
      lexicalEntries: lexicalEntries.map((lexicalEntry) => lexicalEntry.toDomain()).toImmutableList(),
      pronunciations: pronunciations.map((pronunciation) => pronunciation.toDomain()).toImmutableList(),
    );
  }
}
