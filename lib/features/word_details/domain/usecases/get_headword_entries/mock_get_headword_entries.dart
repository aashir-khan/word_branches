import 'package:dr_words/features/word_details/domain/usecases/get_headword_entries/get_headword_entries.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@lazySingleton
@injectable
class MockGetHeadwordEntries extends Mock implements GetHeadwordEntries {}
