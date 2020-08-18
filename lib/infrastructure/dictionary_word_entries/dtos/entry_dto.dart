import 'package:dr_words/domain/dictionary_word_entries/entities/entry.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/pronunciation_dto.dart';
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
    List<PronunciationDto> pronunciations,
  }) = _EntryDto;

  factory EntryDto.fromDomain(Entry entry) {
    return EntryDto(
      etymologies: entry.etymologies.asList(),
      senses: entry.senses.map((sense) => SenseDto.fromDomain(sense)).asList(),
      pronunciations:
          entry?.pronunciations?.map((pronunciation) => PronunciationDto.fromDomain(pronunciation))?.asList(),
    );
  }

  factory EntryDto.fromJson(Map<String, dynamic> json) => _$EntryDtoFromJson(json);

  factory EntryDto.fromFakeData({
    Map<String, dynamic> customFieldValues = const {},
    List<String> traits,
  }) {
    final _etymologies = customFieldValues['etymologies'] as List<String>;
    var _senses = customFieldValues['senses'] as List<SenseDto>;
    var _pronunciations = customFieldValues['pronunciations'] as List<PronunciationDto>;

    if (traits.contains('withSenses')) {
      _senses = [];

      for (var i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) {
        _senses.add(SenseDto.fromFakeData());
      }
    }

    if (traits.contains('withPronunciations')) {
      _pronunciations = [];

      for (var i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) {
        _pronunciations
            .add(const PronunciationDto(audioFile: 'http://audio.oxforddictionaries.com/en/mp3/pop_1_gb_1.mp3'));
      }
    }

    if (_senses == null) {
      throw Exception();
    }

    return EntryDto(
      etymologies: _etymologies,
      senses: _senses,
      pronunciations: _pronunciations,
    );
  }
}

extension EntryDtoX on EntryDto {
  Entry toDomain() {
    return Entry(
      etymologies: etymologies?.toImmutableList(),
      senses: senses?.map((sense) => sense.toDomain())?.toImmutableList(),
      pronunciations: pronunciations?.map((pronunciation) => pronunciation.toDomain())?.toImmutableList(),
    );
  }
}
