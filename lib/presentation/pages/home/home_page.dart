import 'package:auto_route/auto_route.dart';
import 'package:dr_words/presentation/pages/home/widgets/favorited_words_widget.dart';
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
}
