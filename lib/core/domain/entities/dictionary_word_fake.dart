import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:faker/faker.dart';

class DictionaryWordFake extends DictionaryWord {
  DictionaryWordFake({String id, String label}) : super(id: id, label: label);

  factory DictionaryWordFake.fromFakeData() {
    final fakeLabel = faker.lorem.word();
    return DictionaryWordFake(id: fakeLabel, label: fakeLabel);
  }
}
