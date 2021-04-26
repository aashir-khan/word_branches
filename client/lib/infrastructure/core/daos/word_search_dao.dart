import 'package:injectable/injectable.dart';
import 'package:sembast/sembast.dart';

import '../app_database.dart';
import '../dtos/word_search_dto.dart';

@lazySingleton
class WordSearchDao {
  static const String storeName = 'wordSearch';

  final _store = intMapStoreFactory.store(storeName);

  Future insert(WordSearchDto wordSearch) async {
    await _store.add(await AppDatabase.instance.database, wordSearch.toJson());
  }

  Future update(WordSearchDto wordSearch) async {
    final finder = Finder(filter: Filter.equals('word.id', wordSearch.word.id));
    await _store.update(await AppDatabase.instance.database, wordSearch.toJson(), finder: finder);
  }

  Future delete(WordSearchDto wordSearch) async {
    final finder = Finder(filter: Filter.equals('word.id', wordSearch.word.id));
    await _store.delete(await AppDatabase.instance.database, finder: finder);
  }

  Future<WordSearchDto> findById(String id) async {
    final finder = Finder(filter: Filter.equals('word.id', id));
    final recordOrNull = await _store.findFirst(await AppDatabase.instance.database, finder: finder);
    return recordOrNull == null ? null : WordSearchDto.fromJson(recordOrNull.value);
  }

  Future<List<WordSearchDto>> getFavoritedSearches() async {
    final finder = Finder(filter: Filter.equals('isFavorited', true));
    return _snapshotsToDtos(await _store.find(await AppDatabase.instance.database, finder: finder));
  }

  Future<List<WordSearchDto>> getRecentSearches() async {
    final finder = Finder(filter: Filter.notNull('lastSearchedAt'), sortOrders: [SortOrder('lastSearchedAt')]);
    return _snapshotsToDtos(await _store.find(await AppDatabase.instance.database, finder: finder));
  }

  List<WordSearchDto> _snapshotsToDtos(List<RecordSnapshot<int, Map<String, dynamic>>> snapshots) {
    return snapshots.map((snapshot) => WordSearchDto.fromJson(snapshot.value)).toList();
  }
}
