## Bugs
PlatformException (PlatformException(error, com.ericssonxd.snooze_slayer: Targeting S+ (version 31 and above) requires that one of FLAG_IMMUTABLE or FLAG_MUTABLE be specified when creating a PendingIntent.

- Fix: add "PendingIntent.FLAG_IMMUTABLE or" to all PendingIntent

Sometimes crashes when stopping all clocks
- Fix: check if volume is ready