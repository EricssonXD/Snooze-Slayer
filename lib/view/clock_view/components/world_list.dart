import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snooze_slayer/res/theme.dart';
import '../../../view_model/bloc/time_bloc/time_bloc.dart';
import '../../../view_model/bloc/time_bloc/time_states.dart';

class WorldList extends StatelessWidget {
  const WorldList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          WorldCard(
              plusTime: 3,
              name: 'New York , USA',
              image: 'assets/icons/Liberty.svg',
              plus: '+3HRS | EST'),
          WorldCard(
              plusTime: 4,
              name: 'Istambol , Turky',
              image: 'assets/icons/world.svg',
              plus: '+4HRS | EST'),
        ],
      ),
    );
  }
}

class WorldCard extends StatelessWidget {
  final int plusTime;
  final String plus;
  final String name;
  final String image;

  const WorldCard({
    super.key,
    required this.plusTime,
    required this.name,
    required this.image,
    required this.plus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      margin: const EdgeInsets.only(left: 30, right: 10, top: 20, bottom: 20),
      height: 170,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [MyTheme.shadowColor, MyTheme.lightShadowColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: const [
          BoxShadow(
              color: MyTheme.shadowColor, offset: Offset(8, 8), blurRadius: 12),
          BoxShadow(
              color: MyTheme.lightShadowColor,
              offset: Offset(-8, -8),
              blurRadius: 12),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            plus,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontSize: 15, color: Colors.grey),
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                image,
                colorFilter:
                    const ColorFilter.mode(Colors.black12, BlendMode.srcIn),
              ),
              BlocConsumer<TimeCubit, TimeStates>(
                builder: (context, state) {
                  if (state is UpdateTime) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${state.hour.startsWith('0') ? int.parse(state.hour.substring(1)) + plusTime : int.parse(state.hour) + plusTime}:${state.min}',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 33),
                        ),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            state.state,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return const SizedBox();
                  }
                },
                listener: (context, state) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
