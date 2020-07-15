import 'package:dr_words/domain/dictionary_word_entries/entities/lexical_entry.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/entry_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'lexical_entry_dto.g.dart';
part 'lexical_entry_dto.freezed.dart';

@freezed
abstract class LexicalEntryDto with _$LexicalEntryDto {
  const factory LexicalEntryDto({
    @required List<EntryDto> entries,
    @required String lexicalCategory,
  }) = _LexicalEntryDto;

  factory LexicalEntryDto.fromDomain(LexicalEntry lexicalEntry) {
    return LexicalEntryDto(
      entries: lexicalEntry.entries.mapIndexed((_, entry) => EntryDto.fromDomain(entry)).asList(),
      lexicalCategory: lexicalEntry.lexicalCategory,
    );
  }

  factory LexicalEntryDto.fromJson(Map<String, dynamic> json) => _$LexicalEntryDtoFromJson(json);
}

extension LexicalEntryDtoX on LexicalEntryDto {
  LexicalEntry toDomain() {
    return LexicalEntry(
      entries: entries.map((entry) => entry.toDomain()).toImmutableList(),
      lexicalCategory: lexicalCategory,
    );
  }
}
