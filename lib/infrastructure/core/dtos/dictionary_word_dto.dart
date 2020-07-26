import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:faker/faker.dart';

part 'dictionary_word_dto.freezed.dart';
part 'dictionary_word_dto.g.dart';

@freezed
abstract class DictionaryWordDto with _$DictionaryWordDto {
  factory DictionaryWordDto({
    @required String id,
    @required String label,
  }) = _DictionaryWordDto;

  factory DictionaryWordDto.fromDomain(DictionaryWord dictionaryWord) {
    return DictionaryWordDto(
      id: dictionaryWord.id,
      label: dictionaryWord.label,
    );
  }

  factory DictionaryWordDto.fromJson(Map<String, dynamic> json) => _$DictionaryWordDtoFromJson(json);

  factory DictionaryWordDto.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    final defaultLabel = faker.lorem.word();

    final Map<String, dynamic> defaultFieldValues = {
      'id': defaultLabel,
      'label': defaultLabel,
    };

    final id = (customFieldValues['id'] ?? defaultFieldValues['id']) as String;
    final label = (customFieldValues['label'] ?? defaultFieldValues['label']) as String;

    return DictionaryWordDto(id: id, label: label);
  }
}

extension DictionaryWordDtoX on DictionaryWordDto {
  DictionaryWord toDomain() {
    return DictionaryWord(
      id: id,
      label: label,
    );
  }
}