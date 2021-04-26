import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_text.freezed.dart';

@freezed
abstract class IdText implements _$IdText {
  const factory IdText({
    required String id,
    required String text,
  }) = _IdText;

  const IdText._();

  String get formattedText => text.replaceAll(RegExp('_'), ' ');
}
