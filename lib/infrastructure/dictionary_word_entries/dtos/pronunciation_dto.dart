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

  factory PronunciationDto.fromFakeData({Map<String, dynamic> customFieldValues = const {}}) {
    return PronunciationDto(
        audioFile:
            (customFieldValues['audioFile'] ?? 'http://audio.oxforddictionaries.com/en/mp3/pop_1_gb_1.mp3') as String);
  }
}

extension PronunciationDtoX on PronunciationDto {
  Pronunciation toDomain() {
    return Pronunciation(
      audioFile: audioFile,
    );
  }
}
