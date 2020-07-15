import 'package:dr_words/domain/dictionary_word_entries/entities/entry.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/sense_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'entry_dto.g.dart';
part 'entry_dto.freezed.dart';

@freezed
abstract class EntryDto with _$EntryDto {
  const factory EntryDto({
    List<String> etymologies,
    @required List<SenseDto> senses,
  }) = _EntryDto;

  factory EntryDto.fromDomain(Entry entry) {
    return EntryDto(
      etymologies: entry.etymologies.asList(),
      senses: entry.senses.mapIndexed((_, sense) => SenseDto.fromDomain(sense)).asList(),
    );
  }

  factory EntryDto.fromJson(Map<String, dynamic> json) => _$EntryDtoFromJson(json);
}

extension EntryDtoX on EntryDto {
  Entry toDomain() {
    return Entry(
      etymologies: etymologies.toImmutableList(),
      senses: senses.map((sense) => sense.toDomain()).toImmutableList(),
    );
  }
}
