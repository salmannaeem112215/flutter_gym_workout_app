import 'package:flutter/material.dart';
import 'package:flutter_gym_workout_app/data/workout_data.dart';
import 'package:flutter_gym_workout_app/models/workout.dart';
import 'package:provider/provider.dart';
import './workout_tile.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.workoutName});
  final String workoutName;

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutData>(builder: (context, value, child) {
      Workout workout = value.getRelevantWorkout(workoutName);
      return ListView.builder(
        itemCount: workout.excercises.length,
        itemBuilder: ((context, index) => WorkoutTile(
              workoutName: workout.name,
              excercise: workout.excercises[index],
              onCheckboxChanged: () => value.checkOffExcercise(
                workout.name,
                workout.excercises[index].name,
              ),
            )),
      );
    });
  }
}
