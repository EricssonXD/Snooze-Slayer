import 'dart:async';
import 'package:snooze_slayer/res/theme.dart';
import 'package:snooze_slayer/view/common_widget/soft_button.dart';
import 'package:snooze_slayer/view/home_view/home_view.dart';
import 'package:snooze_slayer/view_model/bloc/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:snooze_slayer/view_model/bloc/ringing_bloc/ringing_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const delay = Duration(milliseconds: 3000);

  void askPermissions() async {
    switch (await Permission.notification.status) {
      case PermissionStatus.granted:
        break;
      default:
        Permission.notification.request();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RingingCubit, RingingState>(
      listener: (context, state) {
        state.whenOrNull(
          idleState: () {
            goToNextScreen(context);
            print("This");
          },
        );
      },
      builder: (context, state) {
        Future.delayed(delay, () {
          if (context.mounted) {
            BlocProvider.of<RingingCubit>(context).state.whenOrNull(
                  idleState: () => goToNextScreen(context),
                );
          }
        });
        return Scaffold(
          body: Center(
            child: CircularSoftButton(
                radius: 60,
                icon: Center(
                    child: SvgPicture.asset(
                  'assets/icons/clock.svg',
                  height: 35,
                  width: 35,
                  colorFilter: const ColorFilter.mode(
                      MyTheme.highlightColor, BlendMode.srcIn),
                ))),
          ),
        );
      },
    );
  }

  void goToNextScreen(BuildContext context) {
    print("GO to alarm");
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => HomeBloc(),
            child: const HomeScreen(),
          ),
        )).then((value) {
      askPermissions();
    });
  }
}
