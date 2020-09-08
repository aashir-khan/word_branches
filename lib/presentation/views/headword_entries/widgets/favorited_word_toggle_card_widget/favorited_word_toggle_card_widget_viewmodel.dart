import 'package:dr_words/domain/core/entities/word_search.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/presentation/views/home/widgets/favorited_words_viewmodel.dart';
import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';

class FavoritedWordToggleCardViewModel extends BaseViewModel {
  WordSearch wordSearch;

  FavoritedWordToggleCardViewModel({@required this.wordSearch});

  final _favoritedWordsViewModel = getIt<FavoritedWordsViewModel>();

  bool _isFavorited;
  bool get isFavorited => _isFavorited;

  void initialise() {
    _isFavorited = wordSearch.isFavorited ?? false;
    notifyListeners();
  }

  Future toggleFavoritedState() async {
    if (isFavorited) {
      await _favoritedWordsViewModel.deleteFavoritedSearch(wordSearch);
    } else {
      await _favoritedWordsViewModel.addFavoritedSearch(wordSearch);
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
