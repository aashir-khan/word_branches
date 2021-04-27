import 'package:injectable/injectable.dart';
import 'package:sembast/sembast.dart';

import '../app_database.dart';
import '../dtos/dictionary_word_dto.dart';

@LazySingleton(env: [Environment.dev])
class DictionaryWordDao {
  static const String storeName = 'dictionaryWord';

  final _store = intMapStoreFactory.store(storeName);

  Future insertAll(List<DictionaryWordDto> dictionaryWords) async {
    await _store.addAll(
      await AppDatabase.instance.database,
      dictionaryWords.map((dictionaryWord) => dictionaryWord.toJson()).toList(),
    );
  }

  Future<List<DictionaryWordDto>> getSearchesForQuery(String query) async {
    final finder = Finder(filter: Filter.custom((record) {
      final dto = DictionaryWordDto.fromJson(record.value as Map<String, dynamic>);
      return dto.id.startsWith(query);
    }));

    final snapshots = await _store.find(await AppDatabase.instance.database, finder: finder);
    return _snapshotsToDtos(snapshots);
  }

  List<DictionaryWordDto> _snapshotsToDtos(List<RecordSnapshot<int, Map<String, dynamic>>> snapshots) {
    return snapshots.map((snapshot) => DictionaryWordDto.fromJson(snapshot.value)).toList();
  }
}
