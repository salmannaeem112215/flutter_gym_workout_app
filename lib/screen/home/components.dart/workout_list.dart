import 'package:flutter/material.dart';

import '../../../models/workout.dart';
import '../../worukout/workout_screen.dart';

class WorkoutList extends StatelessWidget {
  const WorkoutList({
    super.key,
    required this.workouts,
  });
  final List<Workout> workouts;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: workouts.length,
      itemBuilder: (context, index) => ListTile(
          title: Text(workouts[index].name),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward_ios_rounded),
            onPressed: () {
              Navigator.pushNamed(
                context,
                WorkoutScreen.routeName,
                arguments: WorkoutArguments(name: workouts[index].name),
              );
            },
          )),
    );
    ;
  }
}
