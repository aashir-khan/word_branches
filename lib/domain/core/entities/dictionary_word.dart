import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:faker/faker.dart';

part 'dictionary_word.freezed.dart';

@freezed
abstract class DictionaryWord with _$DictionaryWord {
  const factory DictionaryWord({
    @required String id,
    @required String label,
    bool isFavorited,
  }) = _DictionaryWord;

  factory DictionaryWord.fromFakeData() {
    final fakeLabel = faker.lorem.word();
    return DictionaryWord(
      id: fakeLabel,
      label: fakeLabel,
      isFavorited: false,
    );
  }
}
