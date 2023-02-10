import 'package:flutter/material.dart';

import './components/body.dart';
import './components/add_excercise_btn.dart';

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
      body: Body(
        workoutName: args.name,
      ),
      floatingActionButton: AddExcerciseButton(
        workoutName: args.name,
      ),
    );
  }
}

class WorkoutArguments {
  final String name;
  const WorkoutArguments({required this.name});
}
