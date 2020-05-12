import 'package:dr_words/features/word_details/data/models/id_text_model.dart';
import 'package:dr_words/features/word_details/domain/entities/id_text.dart';
import 'package:dr_words/features/word_details/domain/entities/pronunciation.dart';
import 'package:faker/faker.dart';

class PronunciationModel extends Pronunciation {
  const PronunciationModel({
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
    final Map<String, dynamic> defaultFieldValues = {
      'audioFile': faker.internet.httpsUrl(),
      'dialects': faker.lorem.words(faker.randomGenerator.integer(10)),
      'phoneticNotation': faker.lorem.word(),
      'phoneticSpelling': faker.lorem.word(),
      'registersList': List<IdText>.generate(faker.randomGenerator.integer(10), (index) => IdTextModel.fromFakeData()),
    };

    final audioFile = (customFieldValues['audioFile'] ?? defaultFieldValues['audioFile']) as String;
    final dialects = (customFieldValues['dialects'] ?? defaultFieldValues['dialects']) as List<String>;
    final phoneticNotation =
        (customFieldValues['phoneticNotation'] ?? defaultFieldValues['phoneticNotation']) as String;
    final phoneticSpelling =
        (customFieldValues['phoneticSpelling'] ?? defaultFieldValues['phoneticSpelling']) as String;
    final registersList = (customFieldValues['registersList'] ?? defaultFieldValues['registersList']) as List<IdText>;

    return PronunciationModel(
      audioFile: audioFile,
      dialects: dialects,
      phoneticNotation: phoneticNotation,
      phoneticSpelling: phoneticSpelling,
      registersList: registersList,
    );
  }
}
