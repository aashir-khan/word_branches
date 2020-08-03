import 'package:auto_route/auto_route.dart';
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
            icon: Icon(Icons.search),
            onPressed: () => ExtendedNavigator.root.replace(Routes.searchPage),
          ),
          PopupMenuButton<String>(
            // ! TODO
            onSelected: (_) {},
            itemBuilder: (context) => ['Settings', 'Help', 'About']
                .map(
                  (choice) => PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
