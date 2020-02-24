import 'package:dr_words/features/word_details/data/models/entry_model.dart';
import 'package:dr_words/features/word_details/data/models/id_text_model.dart';
import 'package:dr_words/features/word_details/data/models/id_text_type_model.dart';
import 'package:dr_words/features/word_details/data/models/pronunciation_model.dart';
import 'package:dr_words/features/word_details/data/models/related_entry_model.dart';
import 'package:dr_words/features/word_details/data/models/variant_form_model.dart';
import 'package:dr_words/features/word_details/domain/entities/entry.dart';
import 'package:dr_words/features/word_details/domain/entities/id_text.dart';
import 'package:dr_words/features/word_details/domain/entities/id_text_type.dart';
import 'package:dr_words/features/word_details/domain/entities/lexical_entry.dart';
import 'package:dr_words/features/word_details/domain/entities/pronunciation.dart';
import 'package:dr_words/features/word_details/domain/entities/related_entry.dart';
import 'package:dr_words/features/word_details/domain/entities/variant_form.dart';
import 'package:faker/faker.dart';

class LexicalEntryModel extends LexicalEntry {
  LexicalEntryModel({
    List<RelatedEntry> derivativeOf,
    List<RelatedEntry> derivatives,
    List<Entry> entries,
    List<IdTextType> grammaticalFeatures,
    String language,
    IdText lexicalCategory,
    IdTextType notes,
    List<Pronunciation> pronunciations,
    String text,
    List<VariantForm> variantForms,
  }) : super(
          derivativeOf: derivativeOf,
          derivatives: derivatives,
          entries: entries,
          grammaticalFeatures: grammaticalFeatures,
          language: language,
          lexicalCategory: lexicalCategory,
          notes: notes,
          pronunciations: pronunciations,
          text: text,
          variantForms: variantForms,
        );

  factory LexicalEntryModel.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    Map<String, dynamic> defaultFieldValues = {
      'derivativeOf':
          List<RelatedEntry>.generate(faker.randomGenerator.integer(10), (index) => RelatedEntryModel.fromFakeData()),
      'derivatives':
          List<RelatedEntry>.generate(faker.randomGenerator.integer(10), (index) => RelatedEntryModel.fromFakeData()),
      'entries': List<Entry>.generate(faker.randomGenerator.integer(10), (index) => EntryModel.fromFakeData()),
      'grammaticalFeatures':
          List<IdTextType>.generate(faker.randomGenerator.integer(10), (index) => IdTextTypeModel.fromFakeData()),
      'language': faker.lorem.word(),
      'lexicalCategory': IdTextModel.fromFakeData(),
      'notes': IdTextTypeModel.fromFakeData(),
      'pronunciations':
          List<Pronunciation>.generate(faker.randomGenerator.integer(10), (index) => PronunciationModel.fromFakeData()),
      'text': faker.lorem.word(),
      'variantForms':
          List<VariantForm>.generate(faker.randomGenerator.integer(10), (index) => VariantFormModel.fromFakeData()),
    };

    final derivativeOf = customFieldValues['derivativeOf'] ?? defaultFieldValues['derivativeOf'];
    final derivatives = customFieldValues['derivatives'] ?? defaultFieldValues['derivatives'];
    final entries = customFieldValues['entries'] ?? defaultFieldValues['entries'];
    final grammaticalFeatures = customFieldValues['grammaticalFeatures'] ?? defaultFieldValues['grammaticalFeatures'];
    final language = customFieldValues['language'] ?? defaultFieldValues['language'];
    final lexicalCategory = customFieldValues['lexicalCategory'] ?? defaultFieldValues['lexicalCategory'];
    final notes = customFieldValues['notes'] ?? defaultFieldValues['notes'];
    final pronunciations = customFieldValues['pronunciations'] ?? defaultFieldValues['pronunciations'];
    final text = customFieldValues['text'] ?? defaultFieldValues['text'];
    final variantForms = customFieldValues['variantForms'] ?? defaultFieldValues['variantForms'];

    return LexicalEntryModel(
      derivativeOf: derivativeOf,
      derivatives: derivatives,
      entries: entries,
      grammaticalFeatures: grammaticalFeatures,
      language: language,
      lexicalCategory: lexicalCategory,
      notes: notes,
      pronunciations: pronunciations,
      text: text,
      variantForms: variantForms,
    );
  }
}
