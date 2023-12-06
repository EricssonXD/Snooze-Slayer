# Snooze Slayer



## Credits
This app used [flutter_neumorphic](https://pub.dev/packages/flutter_neumorphic) (v3.2.0) to create some of the UI components, credits to [www.idean.com](www.idean.com)



## Bugs
PlatformException (PlatformException(error, com.ericssonxd.snooze_slayer: Targeting S+ (version 31 and above) requires that one of FLAG_IMMUTABLE or FLAG_MUTABLE be specified when creating a PendingIntent.

- Fix: add "PendingIntent.FLAG_IMMUTABLE or" to all PendingIntent

Sometimes crashes when stopping all clocks
- Fix: check if volume is ready