import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibe_games_test/src/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const App());
}
