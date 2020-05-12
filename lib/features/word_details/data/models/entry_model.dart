import 'package:dr_words/features/word_details/data/models/id_text_type_model.dart';
import 'package:dr_words/features/word_details/data/models/pronunciation_model.dart';
import 'package:dr_words/features/word_details/data/models/sense_model.dart';
import 'package:dr_words/features/word_details/data/models/variant_form_model.dart';
import 'package:dr_words/features/word_details/domain/entities/entry.dart';
import 'package:dr_words/features/word_details/domain/entities/id_text_type.dart';
import 'package:dr_words/features/word_details/domain/entities/pronunciation.dart';
import 'package:dr_words/features/word_details/domain/entities/sense.dart';
import 'package:dr_words/features/word_details/domain/entities/variant_form.dart';
import 'package:faker/faker.dart';

class EntryModel extends Entry {
  const EntryModel({
    List<String> etymologies,
    List<IdTextType> grammaticalFeatures,
    String homographNumber,
    List<IdTextType> notes,
    List<Pronunciation> pronunciations,
    List<Sense> senses,
    List<VariantForm> variantForms,
  }) : super(
          etymologies: etymologies,
          grammaticalFeatures: grammaticalFeatures,
          homographNumber: homographNumber,
          notes: notes,
          pronunciations: pronunciations,
          senses: senses,
          variantForms: variantForms,
        );

  factory EntryModel.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    final Map<String, dynamic> defaultFieldValues = {
      'etymologies': faker.lorem.words(faker.randomGenerator.integer(10)),
      'grammaticalFeatures':
          List<IdTextType>.generate(faker.randomGenerator.integer(10), (index) => IdTextTypeModel.fromFakeData()),
      'homographNumber': faker.lorem.word(),
      'notes': List<IdTextType>.generate(faker.randomGenerator.integer(10), (index) => IdTextTypeModel.fromFakeData()),
      'pronunciations':
          List<Pronunciation>.generate(faker.randomGenerator.integer(10), (index) => PronunciationModel.fromFakeData()),
      'senses': List<Sense>.generate(faker.randomGenerator.integer(10), (index) => SenseModel.fromFakeData()),
      'variantForms':
          List<VariantForm>.generate(faker.randomGenerator.integer(10), (index) => VariantFormModel.fromFakeData()),
    };

    final etymologies = (customFieldValues['etymologies'] ?? defaultFieldValues['etymologies']) as List<String>;
    final grammaticalFeatures =
        (customFieldValues['grammaticalFeatures'] ?? defaultFieldValues['grammaticalFeatures']) as List<IdTextType>;
    final homographNumber = (customFieldValues['homographNumber'] ?? defaultFieldValues['homographNumber']) as String;
    final notes = (customFieldValues['notes'] ?? defaultFieldValues['notes']) as List<IdTextType>;
    final pronunciations =
        (customFieldValues['pronunciations'] ?? defaultFieldValues['pronunciations']) as List<Pronunciation>;
    final senses = (customFieldValues['senses'] ?? defaultFieldValues['senses']) as List<Sense>;
    final variantForms = (customFieldValues['variantForms'] ?? defaultFieldValues['variantForms']) as List<VariantForm>;

    return EntryModel(
      etymologies: etymologies,
      grammaticalFeatures: grammaticalFeatures,
      homographNumber: homographNumber,
      notes: notes,
      pronunciations: pronunciations,
      senses: senses,
      variantForms: variantForms,
    );
  }
}
