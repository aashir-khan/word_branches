import 'package:dr_words/application/favorited_words/favorited_words_actor/favorited_words_actor_cubit.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/presentation/core/custom_icons_icons.dart';
import 'package:dr_words/presentation/core/widgets/responsive_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:dr_words/presentation/core/constants/app_colors.dart' as colors;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FavoritedWordToggleCard extends HookWidget {
  final DictionaryWord word;

  const FavoritedWordToggleCard({Key key, @required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isFavorited = useState(word.isFavorited ?? false);
    final tooltipKey = GlobalKey();

    return ResponsiveSafeArea(
      builder: (context, size) => Container(
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
                onPressed: () {
                  final cubit = context.bloc<FavoritedWordsActorCubit>();
                  isFavorited.value ? cubit.deleteFavoritedWord(word) : cubit.addFavoritedWord(word);
                  isFavorited.value = !isFavorited.value;
                },
                backgroundColor: colors.primaryColorLight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    isFavorited.value ? CustomIcons.heart_filled_icon : CustomIcons.heart_outline_icon,
                    size: size.height * 0.4,
                    color: isFavorited.value ? colors.secondaryColorLight : Colors.white,
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
  }
}
