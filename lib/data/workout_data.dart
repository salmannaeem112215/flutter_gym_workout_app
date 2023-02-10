import 'package:flutter/material.dart';

import '../models/excercise.dart';
import '../models/workout.dart';

class WorkoutData extends ChangeNotifier {
  /*
    WORKOUT DATA STRUCTURE

    - This overall list contains the different workouts
    - Each Workout has a name, and list of excercise
    
  */

  List<Workout> workouts = [
    // Deault Workout
    Workout(
      name: 'Full Body',
      excercises: [
        Excercise(
          name: 'Jumping Jacks',
          reps: '3',
          sets: '12',
          weight: '32',
        ),
        Excercise(
          name: 'Shumaling Jacks',
          reps: '3',
          sets: '12',
          weight: '32',
        ),
      ],
    ),
    Workout(
      name: 'Lower Body',
      excercises: [
        Excercise(
          name: 'Jumping Jacks',
          reps: '3',
          sets: '12',
          weight: '32',
        ),
      ],
    ),
  ];

  // Get the list of workouts
  List<Workout> getWorkoutList() {
    return workouts;
  }

  // Add a Workout
  void addWorkout(String name) {
    workouts.add(Workout(name: name, excercises: []));
    notifyListeners();
  }

  // Add an Excercise to a Workout
  void addExcercise({
    required String workoutName,
    required String excerciseName,
    required String reps,
    required String sets,
    required String weight,
  }) {
    // get Releveant Wrokout ..
    Workout relevantWorkout =
        workouts.firstWhere((element) => element.name == workoutName);
    // Add workout in Relevant Excercise
    relevantWorkout.excercises.add(
        Excercise(name: excerciseName, weight: weight, reps: reps, sets: sets));
    notifyListeners();
  }

  // Check off excercise
  void checkOffExcercise(String workoutName, String excerciseName) {
    Excercise relevantExcercise =
        getRelevantExcercise(workoutName, excerciseName);

    relevantExcercise.isCompleted = !relevantExcercise.isCompleted;
    notifyListeners();
  }

  // get length of a given workout
  int numberOfExcercisesInWorkout(String workoutName) {
    Workout relevantWorkout = getRelevantWorkout(workoutName);
    return relevantWorkout.excercises.length;
  }

  // get Relevant Workout
  Workout getRelevantWorkout(String workoutName) {
    Workout relevantWorkout =
        workouts.firstWhere((element) => element.name == workoutName);

    return relevantWorkout;
  }

  // get Relevant Excercise
  Excercise getRelevantExcercise(String workoutName, String excerciseName) {
    Workout relevantWorkout = getRelevantWorkout(workoutName);

    Excercise relevantExcercise = relevantWorkout.excercises
        .firstWhere((element) => element.name == excerciseName);

    return relevantExcercise;
  }
}
