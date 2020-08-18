import 'package:dr_words/domain/dictionary_word_entries/entities/pronunciation.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/sense.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'entry.freezed.dart';

@freezed
abstract class Entry with _$Entry {
  const factory Entry({
    KtList<String> etymologies,
    @required KtList<Sense> senses,
    KtList<Pronunciation> pronunciations,
  }) = _Entry;
}
