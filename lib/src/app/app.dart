import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibe_games_test/src/core/navigation/navigation_cubit.dart';
import 'package:vibe_games_test/src/core/theme/app_theme.dart';
import 'package:vibe_games_test/src/features/battle_pass/presentation/pages/battle_pass_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vibe Games Test',
        theme: AppTheme.dark,
        home: const BattlePassPage(),
      ),
    );
  }
}
