import 'package:dr_words/domain/dictionary_word_entries/entities/pronunciation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pronunciation_dto.g.dart';
part 'pronunciation_dto.freezed.dart';

@freezed
abstract class PronunciationDto with _$PronunciationDto {
  const factory PronunciationDto({
    String audioFile,
  }) = _PronunciationDto;

  factory PronunciationDto.fromDomain(Pronunciation pronunciation) {
    return PronunciationDto(
      audioFile: pronunciation.audioFile,
    );
  }

  factory PronunciationDto.fromJson(Map<String, dynamic> json) => _$PronunciationDtoFromJson(json);
}

extension PronunciationDtoX on PronunciationDto {
  Pronunciation toDomain() {
    return Pronunciation(
      audioFile: audioFile,
    );
  }
}
