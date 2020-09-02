import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/presentation/core/custom_icons_icons.dart';
import 'package:dr_words/presentation/core/widgets/responsive_safe_area.dart';
import 'package:dr_words/presentation/views/headword_entries/widgets/favorited_word_toggle_card_widget_viewmodel.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:dr_words/presentation/core/constants/app_colors.dart' as colors;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';

class FavoritedWordToggleCard extends HookWidget {
  final DictionaryWord word;

  const FavoritedWordToggleCard({Key key, @required this.word}) : super(key: key);

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

    return ViewModelBuilder<FavoritedWordToggleCardWidgetViewModel>.reactive(
      onModelReady: (model) => model.initialise(),
      builder: (context, model, child) => ResponsiveSafeArea(
        builder: (context, size) {
          if (model.hasError) {
            WidgetsBinding.instance.addPostFrameCallback((_) => _handleError(context, model.modelError as String));
          }

          return SingleChildScrollView(
            child: Container(
              width: double.infinity,
              color: colors.primaryColorLight,
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: size.height * 0.6,
                    height: size.height * 0.6,
                    child: FloatingActionButton(
                      elevation: 0,
                      onPressed: () => model.toggleFavoritedState(),
                      backgroundColor: colors.primaryColorLight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          model.isFavorited ? CustomIcons.heart_filled_icon : CustomIcons.heart_outline_icon,
                          size: size.height * 0.4,
                          color: model.isFavorited ? colors.secondaryColorLight : Colors.white,
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
                        message: word.label,
                        child: Text(
                          word.label,
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
      viewModelBuilder: () => FavoritedWordToggleCardWidgetViewModel(favoritableWord: word),
    );
  }
}
