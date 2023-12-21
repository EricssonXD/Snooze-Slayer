import 'dart:async';

import 'package:snooze_slayer/model/alarm_model.dart';
import 'package:snooze_slayer/res/theme.dart';
import 'package:snooze_slayer/view/common_widget/warning.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../view_model/bloc/alarm_bloc/alarm_cubit.dart';
import '../../../view_model/bloc/alarm_bloc/alarm_states.dart';
import '../alarm_edit_view.dart';

class AlarmList extends StatefulWidget {
  const AlarmList({super.key});

  @override
  State<AlarmList> createState() => _AlarmListState();
}

class _AlarmListState extends State<AlarmList> {
  StreamSubscription<dynamic>? sub;
  @override
  void initState() {
    super.initState();
    // Use this to listen and update list automatically
    Future.delayed(
        Duration.zero,
        () async =>
            sub = await BlocProvider.of<AlarmCubit>(context).subscribeList);
  }

  @override
  void dispose() {
    sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlarmCubit, AlarmStates>(
      builder: (context, state) {
        if (state is HasData) {
          final data = state.alarms;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              AlarmModel alarm = data[index];
              return InkWell(
                onTap: () {
                  Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(
                          builder: (context) => AlarmEditView(alarm: alarm)));
                },
                onLongPress: () {
                  DeleteWarningDialog(() {
                    BlocProvider.of<AlarmCubit>(context).delete(alarm);
                    Navigator.of(context).pop();
                  }, context);
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text:
                                '${alarm.hour < 10 ? "0${alarm.hour}" : alarm.hour}:${alarm.minute < 10 ? "0${alarm.minute}" : alarm.minute}',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                  color: Colors.black54,
                                  fontSize: 30,
                                )),
                        // TextSpan(
                        //     text: " ${alarm.period}",
                        //     style: Theme.of(context)
                        //         .textTheme
                        //         .headlineLarge!
                        //         .copyWith(color: Colors.black54, fontSize: 17))
                      ])),
                      Column(
                        children: [
                          Text(
                            alarm.title,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    fontSize: 15,
                                    height: 0,
                                    color: Colors.black54),
                          ),
                          // Text(
                          //   alarm.day,
                          //   style: Theme.of(context)
                          //       .textTheme
                          //       .headlineSmall!
                          //       .copyWith(
                          //           fontSize: 10,
                          //           height: 0,
                          //           color: Colors.black54),
                          // )
                        ],
                      ),
                      Switch(
                        hoverColor: Colors.white,
                        activeTrackColor: Colors.white,
                        thumbColor: const MaterialStatePropertyAll(
                            MyTheme.highlightColor),
                        inactiveThumbColor: Colors.grey,
                        inactiveTrackColor: Colors.grey.withOpacity(.1),
                        trackOutlineColor: const MaterialStatePropertyAll(
                          Colors.transparent,
                        ),
                        value: alarm.isEnabled,
                        onChanged: (value) {
                          alarm.isEnabled = value;
                          BlocProvider.of<AlarmCubit>(context).insert(alarm);
                        },
                      )
                    ],
                  ),
                ),
              );
            },
          );
        } else {
          return Container();
        }
      },
      listener: (context, state) {},
    );
  }
}
