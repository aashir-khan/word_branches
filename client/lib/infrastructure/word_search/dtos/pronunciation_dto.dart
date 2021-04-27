import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/word_search/entities/pronunciation.dart';

part 'pronunciation_dto.freezed.dart';
part 'pronunciation_dto.g.dart';

@freezed
class PronunciationDto with _$PronunciationDto {
  const factory PronunciationDto({
    String? audioFile,
  }) = _PronunciationDto;

  factory PronunciationDto.fromDomain(Pronunciation pronunciation) {
    return PronunciationDto(
      audioFile: pronunciation.audioFile,
    );
  }

  factory PronunciationDto.fromJson(Map<String, dynamic> json) => _$PronunciationDtoFromJson(json);

  factory PronunciationDto.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    return PronunciationDto(audioFile: customFieldValues['audioFile'] as String);
  }
}

extension PronunciationDtoX on PronunciationDto {
  Pronunciation toDomain() {
    return Pronunciation(
      audioFile: audioFile,
    );
  }
}
