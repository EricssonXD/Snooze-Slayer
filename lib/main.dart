import 'package:alarm/alarm.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:snooze_slayer/res/theme.dart';
import 'package:snooze_slayer/view/splash_view/splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:snooze_slayer/view_model/bloc/ringing_bloc/ringing_listener.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Alarm.init(showDebugLogs: kDebugMode);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RingingBlocListener(
      child: NeumorphicApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        materialTheme: MyTheme.lightTheme,
        theme: MyTheme.lightNeumorphicTheme,
        home: const SplashScreen(),
        navigatorKey: globalNavigationKey,
      ),
    );
  }
}

final globalNavigationKey = GlobalKey<NavigatorState>();
