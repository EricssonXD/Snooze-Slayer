import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snooze_slayer/main.dart';
import 'package:snooze_slayer/view_model/bloc/ringing_bloc/ringing_cubit.dart';

class RingingBlocListener extends StatelessWidget {
  const RingingBlocListener({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RingingCubit(),
      child: BlocListener<RingingCubit, RingingState>(
        listener: (context, state) {
          // debugPrint("Ring State Update");
          state.when(
            initial: () {
              // debugPrint("Initial State");
            },
            ringing: (alarmSettings) {
              BlocProvider.of<RingingCubit>(context).showRingingScreen(
                  globalNavigationKey.currentContext!, alarmSettings);
            },
            idleState: () {
              // debugPrint("Stopped Ringing");
            },
          );
        },
        child: child,
      ),
    );
  }
}
