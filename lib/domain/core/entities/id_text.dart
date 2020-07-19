import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_text.freezed.dart';

@freezed
abstract class IdText with _$IdText {
  const factory IdText({
    @required String id,
    @required String text,
  }) = _IdText;
}
