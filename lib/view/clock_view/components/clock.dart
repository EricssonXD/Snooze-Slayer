import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:snooze_slayer/res/theme.dart';

class Clock extends StatelessWidget {
  const Clock({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width - 100,
          height: MediaQuery.of(context).size.width - 100,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(MediaQuery.of(context).size.width),
            gradient: const LinearGradient(
              colors: [MyTheme.shadowColor, MyTheme.lightShadowColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: const [
              BoxShadow(
                  color: MyTheme.shadowColor,
                  offset: Offset(8, 6),
                  blurRadius: 12),
              BoxShadow(
                  color: MyTheme.lightShadowColor,
                  offset: Offset(-8, -6),
                  blurRadius: 12),
            ],
          ),
        ),
        const Positioned(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10,
            child: AnalogClock(
              isLive: true,
              hourHandColor: Colors.black,
              minuteHandColor: Colors.black54,
              numberColor: Colors.black45,
              secondHandColor: MyTheme.highlightColor,
              showNumbers: true,
              showAllNumbers: true,
              showDigitalClock: false,
            )),
      ],
    );
  }
}
