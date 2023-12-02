import 'package:flutter/material.dart';
import '../../res/constants.dart';

class CircularSoftButton extends StatelessWidget {
  late final double radius;
  final Widget? icon;
  final Color lightColor;
  CircularSoftButton(
      {super.key,
      double? radius,
      this.icon,
      this.lightColor = const Color.fromRGBO(255, 255, 255, 1)}) {
    this.radius = (radius == null || radius <= 0) ? 32 : radius;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(radius / 2),
      child: Stack(
        children: <Widget>[
          Container(
            width: radius * 2,
            height: radius * 2,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(radius),
              boxShadow: [
                BoxShadow(
                  color: shadowColor,
                  offset: const Offset(8, 6),
                  blurRadius: 12,
                ),
                BoxShadow(
                  color: lightColor,
                  offset: const Offset(-8, -6),
                  blurRadius: 12,
                ),
              ],
            ),
          ),
          Positioned.fill(child: icon!),
        ],
      ),
    );
  }
}
