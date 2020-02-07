import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';

class DictionaryWord extends Equatable {
  final String id;
  final String label;

  DictionaryWord({
    this.id,
    this.label,
  });

  @override
  List<Object> get props => [id, label];

  factory DictionaryWord.fromFakeData() {
    final fakeLabel = faker.lorem.word();
    return DictionaryWord(id: fakeLabel, label: fakeLabel);
  }
}
