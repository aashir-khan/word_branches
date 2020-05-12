import 'package:dr_words/features/word_details/data/models/id_text_model.dart';
import 'package:dr_words/features/word_details/data/models/id_text_type_model.dart';
import 'package:dr_words/features/word_details/domain/entities/id_text.dart';
import 'package:dr_words/features/word_details/domain/entities/id_text_type.dart';
import 'package:dr_words/features/word_details/domain/entities/word_example.dart';
import 'package:faker/faker.dart';

class WordExampleModel extends WordExample {
  const WordExampleModel({
    List<String> definitions,
    List<IdText> domainsList,
    List<IdTextType> notes,
    List<IdText> regions,
    List<IdText> senseIds,
    String text,
  }) : super(
          definitions: definitions,
          domainsList: domainsList,
          notes: notes,
          regions: regions,
          senseIds: senseIds,
          text: text,
        );

  factory WordExampleModel.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    final Map<String, dynamic> defaultFieldValues = {
      'definitions': faker.lorem.words(faker.randomGenerator.integer(10)),
      'domainsList': List<IdText>.generate(faker.randomGenerator.integer(10), (index) => IdTextModel.fromFakeData()),
      'notes': List<IdTextType>.generate(faker.randomGenerator.integer(10), (index) => IdTextTypeModel.fromFakeData()),
      'regions': List<IdText>.generate(faker.randomGenerator.integer(10), (index) => IdTextModel.fromFakeData()),
      'senseIds': List<IdText>.generate(faker.randomGenerator.integer(10), (index) => IdTextModel.fromFakeData()),
      'text': faker.lorem.word(),
    };

    final definitions = (customFieldValues['definitions'] ?? defaultFieldValues['definitions']) as List<String>;
    final domainsList = (customFieldValues['domainsList'] ?? defaultFieldValues['domainsList']) as List<IdText>;
    final notes = (customFieldValues['notes'] ?? defaultFieldValues['notes']) as List<IdTextType>;
    final regions = (customFieldValues['regions'] ?? defaultFieldValues['regions']) as List<IdText>;
    final senseIds = (customFieldValues['senseIds'] ?? defaultFieldValues['senseIds']) as List<IdText>;
    final text = (customFieldValues['text'] ?? defaultFieldValues['text']) as String;

    return WordExampleModel(
      definitions: definitions,
      domainsList: domainsList,
      notes: notes,
      regions: regions,
      senseIds: senseIds,
      text: text,
    );
  }
}
