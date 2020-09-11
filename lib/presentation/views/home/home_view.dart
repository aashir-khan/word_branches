import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';
import 'widgets/favorited_words_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Favorites'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: model.navigateToSearch,
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: FavoritedWordsWidget(),
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
