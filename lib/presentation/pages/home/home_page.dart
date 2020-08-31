import 'package:auto_route/auto_route.dart';
import 'package:dr_words/application/favorited_words/favorited_words_actor/favorited_words_actor_cubit.dart';
import 'package:dr_words/application/favorited_words/favorited_words_watcher/favorited_words_watcher_cubit.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/presentation/pages/home/widgets/favorited_words_widget.dart';
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePage extends HookWidget implements AutoRouteWrapper {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => ExtendedNavigator.root.replace(Routes.searchPage),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: FavoritedWordsWidget(),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => getIt<FavoritedWordsWatcherCubit>()..getFavoritedWords()),
      BlocProvider(create: (_) => getIt<FavoritedWordsActorCubit>()),
    ], child: this);
  }
}
