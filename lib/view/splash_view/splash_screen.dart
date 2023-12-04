import 'dart:async';
import 'package:snooze_slayer/res/constants.dart';
import 'package:snooze_slayer/view/common_widget/soft_button.dart';
import 'package:snooze_slayer/view/home_view/home_view.dart';
import 'package:snooze_slayer/view_model/bloc/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300), () {
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
    });
  }

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
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: CircularSoftButton(
            radius: 60,
            icon: Center(
                child: SvgPicture.asset(
              'assets/icons/clock.svg',
              height: 35,
              width: 35,
              colorFilter:
                  const ColorFilter.mode(Colors.pinkAccent, BlendMode.srcIn),
            ))),
      ),
    );
  }
}
