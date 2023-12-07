import 'package:alarm/alarm.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:snooze_slayer/model/ring_manager.dart';
import 'package:snooze_slayer/res/theme.dart';
import 'package:snooze_slayer/view/splash_view/splash_screen.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Alarm.init(showDebugLogs: kDebugMode);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key}) {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => RingManager.init(navigationKey: _navKey));
  }
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      materialTheme: MyTheme.lightTheme,
      theme: MyTheme.lightNeumorphicTheme,
      home: const SplashScreen(),
      navigatorKey: _navKey,
    );
  }
}

final _navKey = GlobalKey<NavigatorState>();
