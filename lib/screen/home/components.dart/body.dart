import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_gym_workout_app/screen/home/components.dart/workout_tile.dart';
import 'package:flutter_gym_workout_app/data/workout_data.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutData>(
      builder: (context, value, child) => ListView.builder(
        itemCount: value.workouts.length,
        itemBuilder: (context, index) =>
            WorkoutTile(workoutName: value.workouts[index].name),
      ),
    );
  }
}
