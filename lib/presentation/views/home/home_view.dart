import 'package:dr_words/presentation/views/home/home_viewmodel.dart';
import 'package:dr_words/presentation/views/home/widgets/favorited_words_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

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
