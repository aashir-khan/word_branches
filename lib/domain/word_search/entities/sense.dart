import 'package:dr_words/domain/word_search/entities/id_text.dart';
import 'package:dr_words/domain/word_search/entities/example.dart';
import 'package:dr_words/domain/word_search/entities/text_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'sense.freezed.dart';

enum NoteTypeEnum { technicalNote }

@freezed
abstract class Sense with _$Sense {
  const factory Sense({
    KtList<String> definitions,
    KtList<TextType> notes,
    KtList<Example> examples,
    KtList<Sense> subsenses,
    KtList<IdText> registers,
    KtList<IdText> regions,
    KtList<String> crossReferenceMarkers,
  }) = _Sense;
}

extension StringX on String {
  String capitalize() {
    if (this == null) return null;
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
