import 'package:injectable/injectable.dart';
import 'package:sembast/sembast.dart';

import '../../../injection.dart';
import '../../word_search/dtos/headword_entry_dto.dart';
import '../app_database.dart';
import '../dtos/dictionary_word_dto.dart';

@LazySingleton(env: [Env.development])
class HeadwordEntryDao {
  static const String storeName = 'headwordEntry';

  final _store = intMapStoreFactory.store(storeName);

  Future insert(HeadwordEntryDto headwordEntry) async {
    await _store.add(await AppDatabase.instance.database, headwordEntry.toJson());
  }

  Future insertAll(List<HeadwordEntryDto> headwordEntries) async {
    await _store.addAll(
      await AppDatabase.instance.database,
      headwordEntries.map((headwordEntry) => headwordEntry.toJson()).toList(),
    );
  }

  Future<List<HeadwordEntryDto>> getEntriesForWord(DictionaryWordDto word) async {
    final finder = Finder(filter: Filter.equals('id', word.id));
    final snapshots = await _store.find(await AppDatabase.instance.database, finder: finder);
    return _snapshotsToDtos(snapshots);
  }

  List<HeadwordEntryDto> _snapshotsToDtos(List<RecordSnapshot<int, Map<String, dynamic>>> snapshots) {
    return snapshots.map((snapshot) => HeadwordEntryDto.fromJson(snapshot.value)).toList();
  }
}
