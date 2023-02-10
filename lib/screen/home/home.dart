import 'package:flutter/material.dart';

import './components.dart/body.dart';
import 'components.dart/add_workout_btn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
      floatingActionButton: AddWorkOutButton(ctx: context),
    );
  }
}
