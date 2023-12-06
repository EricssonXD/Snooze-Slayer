import 'package:flutter_neumorphic/flutter_neumorphic.dart';

abstract class MyTheme {
  static const Color backgroundColor = Color(0xFFF1F2F6);
  static const Color shadowColor = Color(0xFFDADFF0);
  static const Color lightShadowColor = Colors.white;
  static const Color textColor = Color(0xFF707070);
  static const Color seekBarLightColor = Color(0xFFB8ECED);
  static const Color seekBarDarkColor = Color(0xFF37C8DF);
  static const Color highlightColor = Colors.lightBlueAccent;

  static final ThemeData lightTheme = ThemeData(
    timePickerTheme: TimePickerThemeData(
        backgroundColor: Colors.white,
        hourMinuteColor: Colors.transparent,
        entryModeIconColor: highlightColor,
        dialHandColor: highlightColor,
        dialBackgroundColor: Colors.transparent,
        dayPeriodShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide.none,
        )),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: highlightColor,
      background: backgroundColor,
    ),
    useMaterial3: true,
  );

  static const NeumorphicThemeData lightNeumorphicTheme = NeumorphicThemeData(
    baseColor: backgroundColor,
    variantColor: highlightColor,
    accentColor: highlightColor,
  );
}
