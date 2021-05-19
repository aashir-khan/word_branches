import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:data_fixture_dart/data_fixture_dart.dart';

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
}

extension PronunciationDtoX on PronunciationDto {
  Pronunciation toDomain() {
    return Pronunciation(
      audioFile: audioFile,
    );
  }
}

extension PronunciationDtoFixture on PronunciationDto {
  static _PronunciationDtoFixtureFactory factory() => _PronunciationDtoFixtureFactory();
}

class _PronunciationDtoFixtureFactory extends FixtureFactory<PronunciationDto> {
  @override
  FixtureDefinition<PronunciationDto> definition() => define(
        (faker) {
          return const PronunciationDto(
            audioFile: 'https://audio.oxforddictionaries.com/en/mp3/pop_1_gb_1.mp3',
          );
        },
      );
}
