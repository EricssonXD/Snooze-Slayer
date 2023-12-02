import 'package:clock_analog/model/alarm_model.dart';
import 'package:clock_analog/view/common_widget/warning.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../view_model/bloc/alarm_bloc/alarm_cubit.dart';
import '../../../view_model/bloc/alarm_bloc/alarm_states.dart';
import '../../../view_model/database_helper/database_helper.dart';

class AlarmList extends StatefulWidget {
  const AlarmList({super.key});

  @override
  State<AlarmList> createState() => _AlarmListState();
}

class _AlarmListState extends State<AlarmList> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlarmCubit, AlarmStates>(
      builder: (context, state) {
        if (state is HasData) {
          return FutureBuilder(
            future: BlocProvider.of<AlarmCubit>(context).list,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    AlarmModel alarm = snapshot.data![index];

                    return InkWell(
                      onTap: () {
                        DeleteWarningDialog(() {
                          DbHelper().delete(
                            alarm.key!,
                          );
                          BlocProvider.of<AlarmCubit>(context).getData();
                          Navigator.of(context).pop();
                        }, context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: '${alarm.hour}:${alarm.min}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge!
                                      .copyWith(
                                        color: Colors.black54,
                                        fontSize: 30,
                                      )),
                              TextSpan(
                                  text: " ${alarm.period}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge!
                                      .copyWith(
                                          color: Colors.black54, fontSize: 17))
                            ])),
                            Column(
                              children: [
                                Text(
                                  'Alarm 1',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                          fontSize: 15,
                                          height: 0,
                                          color: Colors.black54),
                                ),
                                Text(
                                  '${alarm.day}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                          fontSize: 10,
                                          height: 0,
                                          color: Colors.black54),
                                )
                              ],
                            ),
                            Switch(
                              hoverColor: Colors.white,
                              activeTrackColor: Colors.white,
                              thumbColor: const MaterialStatePropertyAll(
                                  Colors.pinkAccent),
                              inactiveThumbColor: Colors.grey,
                              inactiveTrackColor: Colors.grey.withOpacity(.1),
                              trackOutlineColor: const MaterialStatePropertyAll(
                                Colors.transparent,
                              ),
                              value: alarm.isEnabled ?? false,
                              onChanged: (value) {
                                alarm.isEnabled = value;
                                BlocProvider.of<AlarmCubit>(context)
                                    .helper
                                    .insert(alarm)
                                    .then((value) => setState(() {}));
                              },
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Text("");
              }
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
