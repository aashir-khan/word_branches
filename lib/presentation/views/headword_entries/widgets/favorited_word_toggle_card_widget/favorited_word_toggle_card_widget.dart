import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';

import '../../../../../domain/core/entities/word_search.dart';
import '../../../../core/constants/app_colors.dart' as colors;
import '../../../../core/custom_icons_icons.dart';
import '../../../../core/widgets/responsive_safe_area.dart';
import 'favorited_word_toggle_card_widget_viewmodel.dart';

class FavoritedWordToggleCard extends HookWidget {
  final WordSearch wordSearch;

  const FavoritedWordToggleCard({Key key, @required this.wordSearch}) : super(key: key);

  void _handleError(BuildContext context, String error) {
    Flushbar(
      backgroundColor: colors.primaryColorDark,
      duration: const Duration(seconds: 50),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      messageText: Text(
        error,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    final tooltipKey = GlobalKey();

    return ViewModelBuilder<FavoritedWordToggleCardViewModel>.reactive(
      onModelReady: (model) => model.initialise(),
      builder: (context, model, child) => ResponsiveSafeArea(
        builder: (context, size) {
          if (model.hasError) {
            WidgetsBinding.instance.addPostFrameCallback((_) => _handleError(context, model.modelError as String));
          }

          return Container(
            width: double.infinity,
            color: colors.primaryColorLight,
            padding: const EdgeInsets.all(24),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: size.height * 0.5,
                    height: size.height * 0.5,
                    child: FloatingActionButton(
                      elevation: 0,
                      onPressed: () => model.toggleFavoritedState(),
                      backgroundColor: colors.primaryColorLight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          model.isFavorited ? CustomIcons.heart_filled_icon : CustomIcons.heart_outline_icon,
                          size: size.height * 0.3,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      final dynamic tooltip = tooltipKey.currentState;
                      tooltip.ensureTooltipVisible();
                    },
                    child: Tooltip(
                        key: tooltipKey,
                        message: wordSearch.word.label,
                        child: Text(
                          wordSearch.word.label,
                          style: const TextStyle(fontSize: 40, color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        )),
                  )
                ],
              ),
            ),
          );
        },
      ),
      viewModelBuilder: () => FavoritedWordToggleCardViewModel(wordSearch: wordSearch),
    );
  }
}
