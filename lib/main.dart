import 'package:flutter/material.dart';
import 'package:flutter_gym_workout_app/data/workout_data.dart';
import 'package:flutter_gym_workout_app/routes.dart';
import 'package:flutter_gym_workout_app/screen/home/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WorkoutData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: HomeScreen.routeName,
        routes: routes,
      ),
    );
  }
}
