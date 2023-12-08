import 'package:alarm/alarm.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:snooze_slayer/res/theme.dart';
import 'package:snooze_slayer/view/splash_view/splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:snooze_slayer/view_model/bloc/ringing_bloc/ringing_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Alarm.init(showDebugLogs: kDebugMode);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key}) {
    // WidgetsBinding.instance
    //     .addPostFrameCallback((_) => RingManager.init(navigationKey: _navKey));
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RingingCubit(),
      child: NeumorphicApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        materialTheme: MyTheme.lightTheme,
        theme: MyTheme.lightNeumorphicTheme,
        home: BlocListener<RingingCubit, RingingState>(
          listener: (context, state) {
            state.when(
              initial: () {
                print("Initial State");
              },
              ringing: (alarmSettings) {
                BlocProvider.of<RingingCubit>(context)
                    .showRingingScreen(context, alarmSettings);
              },
              stoppedRinging: () {
                print("Stopped Ringing");
              },
            );
          },
          child: const SplashScreen(),
        ),
        navigatorKey: _navKey,
      ),
    );
  }
}

final _navKey = GlobalKey<NavigatorState>();
