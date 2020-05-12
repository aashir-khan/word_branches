import 'package:dr_words/features/word_details/domain/entities/id_text.dart';
import 'package:dr_words/features/word_details/domain/entities/id_text_type.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Sense extends Equatable {
  final List<IdText> domains;
  final List<String> examples;
  final List<IdTextType> notes;
  final List<IdText> regions;
  final List<IdText> registers;
  final String text;

  const Sense({
    this.domains,
    this.examples,
    this.notes,
    this.regions,
    this.registers,
    @required this.text,
  });
  @override
  List<Object> get props => [
        domains,
        examples,
        notes,
        regions,
        registers,
        text,
      ];
}
