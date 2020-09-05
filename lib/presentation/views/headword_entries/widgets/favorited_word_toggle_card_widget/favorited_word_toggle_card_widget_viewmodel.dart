import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/presentation/views/home/widgets/favorited_words_viewmodel.dart';
import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';

class FavoritedWordToggleCardWidgetViewModel extends BaseViewModel {
  DictionaryWord favoritableWord;

  FavoritedWordToggleCardWidgetViewModel({@required this.favoritableWord});

  final _favoritedWordsViewModel = getIt<FavoritedWordsViewModel>();

  bool _isFavorited;
  bool get isFavorited => _isFavorited;

  void initialise() {
    _isFavorited = favoritableWord.isFavorited ?? false;
    notifyListeners();
  }

  Future toggleFavoritedState() async {
    if (isFavorited) {
      await _favoritedWordsViewModel.deleteFavoritedWord(favoritableWord, pollForNewWords: false);
    } else {
      await _favoritedWordsViewModel.addFavoritedWord(favoritableWord, pollForNewWords: false);
    }

    if (_favoritedWordsViewModel.hasError) {
      setError('There was an error favoriting/unfavoriting the word');
    } else {
      _toggleFavoritedState();
    }
  }

  void _toggleFavoritedState() {
    _isFavorited = !isFavorited;
    notifyListeners();
  }
}
