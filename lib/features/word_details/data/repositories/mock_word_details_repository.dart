import 'package:dr_words/features/word_details/domain/repositories/word_details_repository.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@lazySingleton
@RegisterAs(WordDetailsRepository, env: Env.test)
class MockWordDetailsRepository extends Mock implements WordDetailsRepository {}
