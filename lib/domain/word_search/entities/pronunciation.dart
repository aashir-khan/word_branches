import 'package:freezed_annotation/freezed_annotation.dart';

part 'pronunciation.freezed.dart';

@freezed
abstract class Pronunciation with _$Pronunciation {
  const factory Pronunciation({required String audioFile}) = _Pronunciation;
}
