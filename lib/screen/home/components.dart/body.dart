import 'package:flutter/material.dart';
import 'package:flutter_gym_workout_app/screen/home/components.dart/workout_list.dart';
import 'package:provider/provider.dart';

import 'package:flutter_gym_workout_app/data/workoute_data.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutData>(
      builder: (context, value, child) {
        return WorkoutList(workouts: value.workouts);
      },
    );
  }
}
