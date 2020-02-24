import 'package:dartz/dartz.dart';
import 'package:dr_words/core/error/failures.dart';
import 'package:dr_words/features/word_details/domain/entities/headword_entry.dart';
import 'package:dr_words/features/word_details/domain/repositories/word_details_repository.dart';
import 'package:dr_words/features/word_details/domain/usecases/get_headword_entries/get_headword_entries.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@injectable
class GetHeadwordEntriesImpl implements GetHeadwordEntries {
  final WordDetailsRepository repository;

  GetHeadwordEntriesImpl(this.repository);

  @override
  Future<Either<Failure, List<HeadwordEntry>>> call(Params params) async {
    return await repository.getHeadwordEntries(params.word);
  }
}
