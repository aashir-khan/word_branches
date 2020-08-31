import 'package:auto_route/auto_route.dart';
import 'package:dr_words/application/favorited_words/favorited_words_bloc.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dr_words/presentation/core/constants/app_colors.dart' as colors;

class FavoritedWordsWidget extends StatelessWidget {
  List<Map<String, Color>> get gradientColorsList => const [
        {
          'start': Color.fromRGBO(0, 78, 146, 1),
          'end': Color.fromRGBO(0, 4, 40, 1),
        },
        {
          'start': Color.fromRGBO(255, 195, 113, 1),
          'end': Color.fromRGBO(255, 95, 109, 1),
        },
        {
          'start': Color.fromRGBO(204, 43, 94, 1),
          'end': Color.fromRGBO(117, 58, 136, 1),
        },
        {
          'start': Color.fromRGBO(67, 206, 162, 1),
          'end': Color.fromRGBO(24, 90, 157, 1),
        },
      ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FavoritedWordsBloc>()..add(const FavoritedWordsEvent.getFavoritedWords()),
      child: BlocConsumer<FavoritedWordsBloc, FavoritedWordsState>(
        listener: (context, state) {
          state.maybeWhen(
            loadFailure: (message) => Flushbar(
              backgroundColor: colors.primaryColorDark,
              duration: const Duration(seconds: 50),
              messageText: Text(
                message,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ).show(context),
            orElse: () => null,
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => Container(),
            loadInProgress: () => const Center(child: CircularProgressIndicator()),
            loadFavoritedWordsSuccess: (favoritedWords) {
              if (favoritedWords.isEmpty()) {
                return const FavoritedWordsListEmpty();
              }

              return ListView.separated(
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemCount: favoritedWords.size,
                itemBuilder: (context, index) {
                  final favoritedWord = favoritedWords[index];
                  final currentItemGradientColors = gradientColorsList[index % gradientColorsList.length];
                  return RaisedButton(
                    padding: const EdgeInsets.all(0),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    onPressed: () {
                      ExtendedNavigator.root.replace(Routes.headwordEntriesPage,
                          arguments: HeadwordEntriesPageArguments(wordSelected: favoritedWord));
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            currentItemGradientColors['start'],
                            currentItemGradientColors['end'],
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
                          BlocProvider(
                            create: (context) => getIt<FavoritedWordsBloc>(),
                            child: Builder(
                              builder: (context) => IconButton(
                                icon: Icon(Icons.delete),
                                onPressed: () async {
                                  context
                                      .bloc<FavoritedWordsBloc>()
                                      .add(FavoritedWordsEvent.deleteFavoritedWord(favoritedWord));
                                  context.bloc<FavoritedWordsBloc>().add(const FavoritedWordsEvent.getFavoritedWords());
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            loadFailure: (message) => Container(),
            actionFailure: (message) => Container(),
            orElse: () => Container(),
          );
        },
      ),
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
