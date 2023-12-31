import 'package:snooze_slayer/res/theme.dart';
import 'package:snooze_slayer/view/stopwatch_view/stopwatch_view.dart';
import 'package:snooze_slayer/view_model/bloc/alarm_bloc/alarm_cubit.dart';
import 'package:snooze_slayer/view_model/bloc/stopwatch_bloc/stopwatch_cubit.dart';
import 'package:snooze_slayer/view_model/bloc/time_bloc/time_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../alarm_view/alarm_view.dart';
import '../clock_view/clock_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _currentIndex;
  late PageController _pageController;
  // late double _scale;
  bool _navbarTapping = false;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _pageController = PageController(initialPage: _currentIndex);
    // _scale = 1.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: GNav(
            selectedIndex: _currentIndex,
            backgroundColor: MyTheme.backgroundColor,
            rippleColor: Colors.white,
            hoverColor: Colors.white,
            haptic: true,
            tabBorderRadius: 30,
            tabActiveBorder: Border.all(
              color: Colors.transparent,
              width: 1,
            ),
            tabBorder: Border.all(color: Colors.transparent, width: 1),
            curve: Curves.easeOutExpo,
            duration: const Duration(milliseconds: 300),
            gap: 8,
            color: Colors.black38,
            activeColor: MyTheme.highlightColor,
            iconSize: 24,
            tabBackgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tabs: const [
              GButton(
                icon: Icons.alarm_add,
                text: 'Alarm',
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              ),
              GButton(
                icon: Icons.access_time_rounded,
                text: 'Time',
              ),
              GButton(
                icon: CupertinoIcons.globe,
                text: 'World',
              ),
              GButton(
                icon: Icons.timer,
                text: 'Timer',
              ),
            ],
            onTabChange: (value) {
              _navbarTapping = true;
              _pageController
                  .animateToPage(value,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn)
                  .then((value) => _navbarTapping = false);
              // _scale = 0.0;
            },
          ),
        ),
        body: AnimatedBuilder(
          animation: _pageController,
          builder: (context, child) {
            return PageView(
              onPageChanged: _onPageChanged,
              controller: _pageController,
              children: [
                BlocProvider(
                  create: (context) => AlarmCubit(),
                  child: const AlarmScreen(),
                ),
                BlocProvider(
                  create: (context) => TimeCubit(),
                  child: const ClockScreen(),
                ),
                BlocProvider(
                  create: (context) => TimeCubit(),
                  child: const ClockScreen(),
                ),
                BlocProvider(
                  create: (context) => StopwatchCubit(),
                  child: const StopWatchScreen(),
                ),
              ],
            );
          },
        ));
  }

  void _onPageChanged(int index) {
    // print(index);
    setState(() {
      if (!_navbarTapping) _currentIndex = index;
      // if (index == _currentIndex - 1) {
      // _scale = 0.0;
      // } else if (index == _currentIndex + 1) {
      // _scale = 1.0;
      // }
    });
  }
}
