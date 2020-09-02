import 'package:auto_route/auto_route.dart';
import 'package:dr_words/presentation/views/home/widgets/favorited_words_viewmodel.dart';
import 'package:dr_words/presentation/core/widgets/loading_indicator.dart';
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dr_words/presentation/core/constants/app_colors.dart' as colors;
import 'package:stacked/stacked.dart';

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

        final favoritedWords = model.favoritedWords;

        return favoritedWords == null || favoritedWords.isEmpty()
            ? const FavoritedWordsListEmpty()
            : ListView.separated(
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemCount: favoritedWords.size,
                itemBuilder: (context, index) {
                  final favoritedWord = favoritedWords[index];
                  return RaisedButton(
                    padding: const EdgeInsets.all(0),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    onPressed: () {
                      ExtendedNavigator.root.replace(Routes.headwordEntriesView,
                          arguments: HeadwordEntriesViewArguments(wordSelected: favoritedWord));
                    },
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
                            favoritedWord.label,
                            style: const TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () => model.deleteFavoritedWord(favoritedWord),
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
              children: <Widget>[
                FaIcon(FontAwesomeIcons.heartBroken, color: colors.primaryColorLight, size: 132),
                const Text(
                  'Hmm... looks like you have no favorited words. Begin searching to find some.',
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
