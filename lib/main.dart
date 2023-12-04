import 'package:alarm/alarm.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:snooze_slayer/res/constants.dart';
import 'package:snooze_slayer/view/splash_view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Alarm.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
        debugShowCheckedModeBanner: false,
        materialTheme: ThemeData(
          timePickerTheme: TimePickerThemeData(
              backgroundColor: Colors.white,
              hourMinuteColor: Colors.transparent,
              entryModeIconColor: Colors.pinkAccent,
              dialHandColor: Colors.pinkAccent,
              dialBackgroundColor: Colors.transparent,
              dayPeriodShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide.none,
              )),
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple, background: backgroundColor),
          useMaterial3: true,
        ),
        theme: NeumorphicThemeData(
          baseColor: backgroundColor,
          variantColor: Colors.pinkAccent,
          accentColor: Colors.pinkAccent,
        ),
        home: const SplashScreen());
  }
}
