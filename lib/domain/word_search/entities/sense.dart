import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import 'example.dart';
import 'id_text.dart';
import 'text_type.dart';

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
