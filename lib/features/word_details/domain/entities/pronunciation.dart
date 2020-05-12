import 'package:dr_words/features/word_details/domain/entities/id_text.dart';
import 'package:equatable/equatable.dart';

class Pronunciation extends Equatable {
  final String audioFile;
  final List<String> dialects;
  final String phoneticNotation;
  final String phoneticSpelling;
  final List<IdText> registersList;

  const Pronunciation({
    this.audioFile,
    this.dialects,
    this.phoneticNotation,
    this.phoneticSpelling,
    this.registersList,
  });

  @override
  List<Object> get props => [
        audioFile,
        dialects,
        phoneticNotation,
        phoneticNotation,
        registersList,
      ];
}
