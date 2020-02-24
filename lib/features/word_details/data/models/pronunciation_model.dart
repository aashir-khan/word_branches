import 'package:dr_words/features/word_details/data/models/id_text_model.dart';
import 'package:dr_words/features/word_details/domain/entities/id_text.dart';
import 'package:dr_words/features/word_details/domain/entities/pronunciation.dart';
import 'package:faker/faker.dart';

class PronunciationModel extends Pronunciation {
  PronunciationModel({
    String audioFile,
    List<String> dialects,
    String phoneticNotation,
    String phoneticSpelling,
    List<IdText> registersList,
  }) : super(
          audioFile: audioFile,
          dialects: dialects,
          phoneticNotation: phoneticNotation,
          phoneticSpelling: phoneticSpelling,
          registersList: registersList,
        );

  factory PronunciationModel.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    Map<String, dynamic> defaultFieldValues = {
      'audioFile': faker.internet.httpsUrl(),
      'dialects': faker.lorem.words(faker.randomGenerator.integer(10)),
      'phoneticNotation': faker.lorem.word(),
      'phoneticSpelling': faker.lorem.word(),
      'registersList': List<IdText>.generate(faker.randomGenerator.integer(10), (index) => IdTextModel.fromFakeData()),
    };

    final audioFile = customFieldValues['audioFile'] ?? defaultFieldValues['audioFile'];
    final dialects = customFieldValues['dialects'] ?? defaultFieldValues['dialects'];
    final phoneticNotation = customFieldValues['phoneticNotation'] ?? defaultFieldValues['phoneticNotation'];
    final phoneticSpelling = customFieldValues['phoneticSpelling'] ?? defaultFieldValues['phoneticSpelling'];
    final registersList = customFieldValues['registersList'] ?? defaultFieldValues['registersList'];

    return PronunciationModel(
      audioFile: audioFile,
      dialects: dialects,
      phoneticNotation: phoneticNotation,
      phoneticSpelling: phoneticSpelling,
      registersList: registersList,
    );
  }
}
