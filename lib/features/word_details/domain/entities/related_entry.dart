import 'package:dr_words/features/word_details/domain/entities/id_text.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class RelatedEntry extends Equatable {
  final String id;
  final String language;
  final List<IdText> domains;
  final List<IdText> regions;
  final List<IdText> registers;
  final String text;

  RelatedEntry({
    @required this.id,
    @required this.text,
    this.language,
    this.domains,
    this.regions,
    this.registers,
  });

  @override
  List<Object> get props => [
        id,
        language,
        domains,
        regions,
        registers,
        text,
      ];
}
