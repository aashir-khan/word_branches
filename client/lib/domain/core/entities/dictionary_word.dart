import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_word.freezed.dart';

@freezed
class DictionaryWord with _$DictionaryWord {
  const factory DictionaryWord({
    required String id,
    required String label,
  }) = _DictionaryWord;
}
