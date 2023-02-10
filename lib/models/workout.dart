import 'package:flutter_gym_workout_app/models/excercise.dart';

class Workout {
  final String name;
  List<Excercise> excercises;

  Workout({required this.name, required this.excercises});
}
