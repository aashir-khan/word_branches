import 'package:dr_words/features/word_details/domain/entities/id_text.dart';
import 'package:dr_words/features/word_details/domain/entities/id_text_type.dart';
import 'package:dr_words/features/word_details/domain/entities/pronunciation.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class VariantForm extends Equatable {
  final List<IdText> domains;
  final List<IdTextType> notes;
  final List<Pronunciation> pronunciations;
  final List<IdText> regions;
  final List<IdText> registers;
  final String text;

  const VariantForm({
    this.domains,
    this.notes,
    this.pronunciations,
    this.regions,
    this.registers,
    @required this.text,
  });

  @override
  List<Object> get props => [
        domains,
        notes,
        pronunciations,
        regions,
        registers,
        text,
      ];
}
