import 'dart:async';
import 'package:dr_words/infrastructure/core/daos/dictionary_word_dao.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';

part 'database.g.dart';

@Database(version: 1, entities: [DictionaryWordDto])
abstract class AppDatabase extends FloorDatabase {
  DictionaryWordDao get dictionaryWordDao;
}
