import 'package:dr_words/features/word_details/domain/entities/id_text_type.dart';
import 'package:dr_words/features/word_details/domain/entities/pronunciation.dart';
import 'package:dr_words/features/word_details/domain/entities/sense.dart';
import 'package:dr_words/features/word_details/domain/entities/variant_form.dart';
import 'package:equatable/equatable.dart';

class Entry extends Equatable {
  final List<String> etymologies;
  final List<IdTextType> grammaticalFeatures;
  final String homographNumber;
  final List<IdTextType> notes;
  final List<Pronunciation> pronunciations;
  final List<Sense> senses;
  final List<VariantForm> variantForms;

  Entry({
    this.etymologies,
    this.grammaticalFeatures,
    this.homographNumber,
    this.notes,
    this.pronunciations,
    this.senses,
    this.variantForms,
  });

  @override
  List<Object> get props => [
        etymologies,
        grammaticalFeatures,
        homographNumber,
        notes,
        pronunciations,
        senses,
        variantForms,
      ];
}
