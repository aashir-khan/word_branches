import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:faker/faker.dart';

part 'dictionary_word_dto.g.dart';

@entity
@JsonSerializable()
class DictionaryWordDto extends Equatable {
  @primaryKey
  final String id;
  final String label;
  final bool isFavorited;

  const DictionaryWordDto({@required this.id, @required this.label, this.isFavorited});

  factory DictionaryWordDto.fromDomain(DictionaryWord dictionaryWord) {
    return DictionaryWordDto(
      id: dictionaryWord.id,
      label: dictionaryWord.label,
      isFavorited: dictionaryWord.isFavorited,
    );
  }

  factory DictionaryWordDto.fromJson(Map<String, dynamic> json) => _$DictionaryWordDtoFromJson(json);
  Map<String, dynamic> toJson() => _$DictionaryWordDtoToJson(this);

  factory DictionaryWordDto.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    final defaultLabel = faker.lorem.word();

    final Map<String, dynamic> defaultFieldValues = {
      'id': defaultLabel,
      'label': defaultLabel,
    };

    final id = (customFieldValues['id'] ?? defaultFieldValues['id']) as String;
    final label = (customFieldValues['label'] ?? defaultFieldValues['label']) as String;
    final isFavorited = customFieldValues['isFavorited'] as bool;

    return DictionaryWordDto(
      id: id,
      label: label,
      isFavorited: isFavorited,
    );
  }

  @override
  List<Object> get props => [id, label, isFavorited];
}

extension DictionaryWordDtoX on DictionaryWordDto {
  DictionaryWord toDomain() {
    return DictionaryWord(
      id: id,
      label: label,
      isFavorited: isFavorited,
    );
  }
}
