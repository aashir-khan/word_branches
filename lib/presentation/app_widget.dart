import 'package:auto_route/auto_route.dart';
import 'package:dr_words/application/dictionary_word_search/bloc.dart';
import 'package:dr_words/presentation/core/constants/app_colors.dart' as colors;
import 'package:dr_words/injection.dart';
import 'package:dr_words/presentation/core/constants/theme_data.dart';
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: colors.primaryColorDark));

    return BlocProvider(
      create: (_) => getIt<DictionaryWordSearchBloc>(),
      child: MaterialApp(
        builder: (ctx, _) => ExtendedNavigator<Router>(router: Router()),
        title: 'Dr. Words',
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
