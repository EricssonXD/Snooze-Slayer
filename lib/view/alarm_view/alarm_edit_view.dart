import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AlarmEditView extends StatefulWidget {
  const AlarmEditView({super.key});

  @override
  State<AlarmEditView> createState() => _AlarmEditViewState();
}

class _AlarmEditViewState extends State<AlarmEditView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(
        children: [Text("YO"), NeumorphicAppBar()],
      ),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
          )
        ],
      )),
    );
  }
}
