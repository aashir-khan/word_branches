import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import 'pronunciation.dart';
import 'sense.dart';

part 'entry.freezed.dart';

@freezed
abstract class Entry with _$Entry {
  const factory Entry({
    KtList<String>? etymologies,
    required KtList<Sense> senses,
    KtList<Pronunciation>? pronunciations,
  }) = _Entry;
}
