import 'package:dartz/dartz.dart';
import 'package:dr_words/core/domain/entities/dictionary_word.dart';

import 'package:dr_words/features/word_details/data/models/headword_entry_model.dart';
import 'package:dr_words/features/word_details/domain/entities/headword_entry.dart';
import 'package:dr_words/features/word_details/domain/repositories/word_details_repository.dart';
import 'package:dr_words/features/word_details/domain/usecases/get_headword_entries/get_headword_entries.dart';
import 'package:dr_words/features/word_details/domain/usecases/get_headword_entries/get_headword_entries_impl.dart';
import 'package:dr_words/injection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  GetHeadwordEntries usecase;
  WordDetailsRepository mockWordDetailsRepository;

  setUpAll(() async {
    await configureInjection(Env.test);

    mockWordDetailsRepository = getIt<WordDetailsRepository>();
    usecase = getIt<GetHeadwordEntriesImpl>();
  });

  final tDictionaryWord = DictionaryWord.fromFakeData();
  final List<HeadwordEntry> tHeadwordEntryList =
      List<HeadwordEntry>.generate(2, (index) => HeadwordEntryModel.fromFakeData());

  test('should get headword entries for the word from the repository', () async {
    // arrange
    when(mockWordDetailsRepository.getHeadwordEntries(tDictionaryWord))
        .thenAnswer((_) async => Right(tHeadwordEntryList));

    // act
    final result = await usecase(Params(word: tDictionaryWord));

    // assert
    expect(result, Right(tHeadwordEntryList));
    verify(mockWordDetailsRepository.getHeadwordEntries(tDictionaryWord));
  });
}
