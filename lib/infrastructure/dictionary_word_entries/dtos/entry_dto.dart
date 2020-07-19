import 'package:dr_words/domain/dictionary_word_entries/entities/entry.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/sense_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:faker/faker.dart';

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
      senses: entry.senses.map((sense) => SenseDto.fromDomain(sense)).asList(),
    );
  }

  factory EntryDto.fromJson(Map<String, dynamic> json) => _$EntryDtoFromJson(json);

  factory EntryDto.fromFakeData({
    Map<String, dynamic> customFieldValues = const {},
    Map<String, dynamic> options = const {},
  }) {
    List<String> etymologies;
    List<SenseDto> senses;

    final etymologiesCount = (options['etymologiesCount'] ?? faker.randomGenerator.integer(5)) as int;
    final sensesCount = (options['sensesCount'] ?? faker.randomGenerator.integer(5, min: 1)) as int;

    if (customFieldValues['etymologies'] != null) {
      etymologies = customFieldValues['etymologies'] as List<String>;
    } else {
      for (var i = 0; i < etymologiesCount; i++) {
        etymologies.add(faker.lorem.sentence());
      }
    }

    if (customFieldValues['senses'] != null) {
      senses = customFieldValues['senses'] as List<SenseDto>;
    } else {
      for (var i = 0; i < sensesCount; i++) {
        senses.add(
          SenseDto.fromFakeData(
              customFieldValues: (customFieldValues['senses'] ?? {}) as Map<String, dynamic>,
              options: (customFieldValues['sensesOptions'] ?? {}) as Map<String, dynamic>),
        );
      }
    }

    return EntryDto(etymologies: etymologies, senses: senses);
  }
}

extension EntryDtoX on EntryDto {
  Entry toDomain() {
    return Entry(
      etymologies: etymologies?.toImmutableList(),
      senses: senses?.map((sense) => sense.toDomain())?.toImmutableList(),
    );
  }
}
