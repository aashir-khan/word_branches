import 'package:dr_words/infrastructure/core/app_database.dart';
import 'package:dr_words/infrastructure/core/dtos/word_search_dto.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:sembast/sembast.dart';

/*
 * This DAO exists to account for storing of fake word searches (e.g. remote search results)
 */
@LazySingleton(env: [Env.development])
class WordSearchFakeDao {
  static const String storeName = 'wordSearchFake';

  final _store = intMapStoreFactory.store(storeName);

  Future insert(WordSearchDto wordSearch) async {
    await _store.add(await AppDatabase.instance.database, wordSearch.toJson());
  }

  Future insertAll(List<WordSearchDto> wordSearches) async {
    await _store.addAll(
      await AppDatabase.instance.database,
      wordSearches.map((wordSearch) => wordSearch.toJson()).toList(),
    );
  }

  Future<List<WordSearchDto>> getSearchesForQuery(String query) async {
    final finder = Finder(filter: Filter.custom((record) {
      final dto = WordSearchDto.fromJson(record.value as Map<String, dynamic>);
      return dto.word.id.startsWith(query);
    }));

    final snapshots = await _store.find(await AppDatabase.instance.database, finder: finder);
    return _snapshotsToDtos(snapshots);
  }

  List<WordSearchDto> _snapshotsToDtos(List<RecordSnapshot<int, Map<String, dynamic>>> snapshots) {
    return snapshots.map((snapshot) => WordSearchDto.fromJson(snapshot.value)).toList();
  }
}
