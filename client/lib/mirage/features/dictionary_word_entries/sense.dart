import '../../../infrastructure/word_search/dtos/sense_dto.dart';

Future<List<SenseDto>> createSenses({
  Map<String, dynamic> customFieldValues = const {},
  List<String> traits = const [],
  int totalCount = 1,
}) async {
  final List<SenseDto> senses = [];

  for (var i = 0; i < totalCount; i++) {
    senses.add(SenseDto.fromFakeData(
      customFieldValues: customFieldValues,
      traits: traits,
    ));
  }

  return senses;
}
