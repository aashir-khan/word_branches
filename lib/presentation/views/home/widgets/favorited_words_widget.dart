import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import '../../../core/constants/app_colors.dart' as colors;
import '../../../core/widgets/loading_indicator.dart';
import 'favorited_words_viewmodel.dart';

class FavoritedWordsWidget extends StatelessWidget {
  void _handleError(BuildContext context, String error) {
    Flushbar(
      backgroundColor: colors.primaryColorDark,
      duration: const Duration(seconds: 50),
      messageText: Text(
        error,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FavoritedWordsViewModel>.reactive(
      onModelReady: (model) => model.initialise(),
      builder: (context, model, child) {
        if (model.isBusy) {
          return LoadingIndicator();
        } else if (model.hasError) {
          WidgetsBinding.instance.addPostFrameCallback((_) => _handleError(context, model.modelError as String));
          return Container();
        }

        final favoritedSearches = model.favoritedSearches;

        return favoritedSearches == null || favoritedSearches.isEmpty()
            ? const FavoritedWordsListEmpty()
            : ListView.separated(
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemCount: favoritedSearches.size,
                itemBuilder: (context, index) {
                  final favoritedSearch = favoritedSearches[index];
                  return RaisedButton(
                    padding: const EdgeInsets.all(0),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    onPressed: () => model.navigateToHeadwordEntriesView(favoritedSearch),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: <Color>[
                            Color.fromRGBO(0, 78, 146, 1),
                            Color.fromRGBO(0, 4, 40, 1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            favoritedSearch.word.label,
                            style: const TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              model.deleteFavoritedSearchAndRefresh(favoritedSearch);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                });
      },
      viewModelBuilder: () => FavoritedWordsViewModel(),
    );
  }
}

class FavoritedWordsListEmpty extends StatelessWidget {
  const FavoritedWordsListEmpty();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 30,
            child: Container(),
          ),
          Expanded(
            flex: 70,
            child: Column(
              children: const <Widget>[
                FaIcon(FontAwesomeIcons.heartBroken, color: colors.primaryColorLight, size: 132),
                Text(
                  'Hmm... looks like you have no favorited searches. Begin searching to find some.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
