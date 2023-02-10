import 'package:flutter/material.dart';
import 'package:flutter_gym_workout_app/screen/home/home.dart';
import 'package:flutter_gym_workout_app/screen/worukout/workout_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  HomeScreen.routeName: (ctx) => const HomeScreen(),
  WorkoutScreen.routeName: (ctx) => const WorkoutScreen(),
};
