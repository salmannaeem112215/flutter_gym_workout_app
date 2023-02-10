import 'package:flutter/material.dart';

import './components/body.dart';

class WorkoutScreen extends StatelessWidget {
  static String routeName = "/workout";
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as WorkoutArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.name),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}

class WorkoutArguments {
  final String name;
  const WorkoutArguments({required this.name});
}
