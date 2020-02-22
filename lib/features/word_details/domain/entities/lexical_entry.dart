import 'package:dr_words/features/word_details/domain/entities/entry.dart';
import 'package:dr_words/features/word_details/domain/entities/id_text.dart';
import 'package:dr_words/features/word_details/domain/entities/id_text_type.dart';
import 'package:dr_words/features/word_details/domain/entities/pronunciation.dart';
import 'package:dr_words/features/word_details/domain/entities/related_entry.dart';
import 'package:dr_words/features/word_details/domain/entities/variant_form.dart';
import 'package:equatable/equatable.dart';

class LexicalEntry extends Equatable {
  final List<RelatedEntry> derivativeOf;
  final List<RelatedEntry> derivatives;
  final List<Entry> entries;
  final List<IdTextType> grammaticalFeatures;
  final String langauge;
  final IdText lexicalCategory;
  final IdTextType notes;
  final List<Pronunciation> pronunciations;
  final String text;
  final List<VariantForm> variantForms;

  LexicalEntry({
    this.derivativeOf,
    this.derivatives,
    this.entries,
    this.grammaticalFeatures,
    this.langauge,
    this.lexicalCategory,
    this.notes,
    this.pronunciations,
    this.text,
    this.variantForms,
  });

  @override
  List<Object> get props => [];
}
