import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_type.freezed.dart';

@freezed
abstract class TextType with _$TextType {
  const factory TextType({
    required String text,
    required String type,
  }) = _TextType;
}
