import 'package:dr_words/features/word_details/domain/repositories/word_details_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@lazySingleton
@injectable
class MockWordDetailsRepository extends Mock implements WordDetailsRepository {}
