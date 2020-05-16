import 'package:auto_route/auto_route.dart';
import 'package:dr_words/core/constants/app_colors.dart' as colors;
import 'package:dr_words/core/presentation/routes/router.gr.dart';
import 'package:dr_words/features/query_search/presentation/bloc/query_search_bloc.dart';
import 'package:dr_words/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/constants/theme_data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Env.development);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: colors.primaryColorDark));

    return BlocProvider(
      create: (_) => getIt<QuerySearchBloc>(),
      child: MaterialApp(
        builder: (ctx, _) => ExtendedNavigator<Router>(router: Router()),
        title: 'Dr. Words',
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
