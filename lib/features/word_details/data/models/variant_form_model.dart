import 'package:dr_words/features/word_details/data/models/id_text_model.dart';
import 'package:dr_words/features/word_details/data/models/id_text_type_model.dart';
import 'package:dr_words/features/word_details/data/models/pronunciation_model.dart';
import 'package:dr_words/features/word_details/domain/entities/id_text.dart';
import 'package:dr_words/features/word_details/domain/entities/id_text_type.dart';
import 'package:dr_words/features/word_details/domain/entities/pronunciation.dart';
import 'package:dr_words/features/word_details/domain/entities/variant_form.dart';
import 'package:faker/faker.dart';

class VariantFormModel extends VariantForm {
  VariantFormModel({
    List<IdText> domains,
    List<IdTextType> notes,
    List<Pronunciation> pronunciations,
    List<IdText> regions,
    List<IdText> registers,
    String text,
  }) : super(
          domains: domains,
          notes: notes,
          pronunciations: pronunciations,
          regions: regions,
          registers: registers,
          text: text,
        );

  factory VariantFormModel.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    Map<String, dynamic> defaultFieldValues = {
      'domains': List<IdText>.generate(faker.randomGenerator.integer(10), (index) => IdTextModel.fromFakeData()),
      'notes': List<IdTextType>.generate(faker.randomGenerator.integer(10), (index) => IdTextTypeModel.fromFakeData()),
      'pronunciations':
          List<Pronunciation>.generate(faker.randomGenerator.integer(10), (index) => PronunciationModel.fromFakeData()),
      'regions': List<IdText>.generate(faker.randomGenerator.integer(10), (index) => IdTextModel.fromFakeData()),
      'registers': List<IdText>.generate(faker.randomGenerator.integer(10), (index) => IdTextModel.fromFakeData()),
      'text': faker.lorem.word(),
    };

    final domains = customFieldValues['domains'] ?? defaultFieldValues['domains'];
    final notes = customFieldValues['notes'] ?? defaultFieldValues['notes'];
    final pronunciations = customFieldValues['pronunciations'] ?? defaultFieldValues['pronunciations'];
    final regions = customFieldValues['regions'] ?? defaultFieldValues['regions'];
    final registers = customFieldValues['registers'] ?? defaultFieldValues['registers'];
    final text = customFieldValues['text'] ?? defaultFieldValues['text'];

    return VariantFormModel(
      domains: domains,
      notes: notes,
      pronunciations: pronunciations,
      regions: regions,
      registers: registers,
      text: text,
    );
  }
}
