import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import 'id_text.dart';

part 'example.freezed.dart';

@freezed
abstract class Example with _$Example {
  const factory Example({
    @required String text,
    KtList<String> definitions,
    KtList<IdText> registers,
  }) = _Example;
}
