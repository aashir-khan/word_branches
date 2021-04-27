import 'package:freezed_annotation/freezed_annotation.dart';

part 'pronunciation.freezed.dart';

@freezed
class Pronunciation with _$Pronunciation {
  const factory Pronunciation({String? audioFile}) = _Pronunciation;
}
