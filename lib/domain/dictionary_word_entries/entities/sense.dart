import 'package:dr_words/domain/core/entities/id_text.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/example.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/text_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'sense.freezed.dart';

@freezed
abstract class Sense with _$Sense {
  const factory Sense({
    KtList<String> definitions,
    KtList<TextType> notes,
    KtList<Example> examples,
    KtList<Sense> subsenses,
    KtList<IdText> registers,
  }) = _Sense;
}
