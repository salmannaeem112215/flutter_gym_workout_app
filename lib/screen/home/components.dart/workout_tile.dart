import 'package:flutter/material.dart';

import '../../workout/workout_screen.dart';

class WorkoutTile extends StatelessWidget {
  const WorkoutTile({super.key, required this.workoutName});
  final String workoutName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(workoutName),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_forward_ios_rounded),
          onPressed: () {
            Navigator.pushNamed(
              context,
              WorkoutScreen.routeName,
              arguments: WorkoutArguments(name: workoutName),
            );
          },
        ));
  }
}
