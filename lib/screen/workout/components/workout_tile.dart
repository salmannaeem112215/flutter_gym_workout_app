import 'package:flutter/material.dart';
import 'package:flutter_gym_workout_app/models/excercise.dart';

class WorkoutTile extends StatelessWidget {
  const WorkoutTile({
    super.key,
    required this.excercise,
    required this.workoutName,
    required this.onCheckboxChanged,
  });
  final String workoutName;
  final Excercise excercise;
  final Function onCheckboxChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        title: Text(
          excercise.name,
        ),
        trailing: Checkbox(
          value: excercise.isCompleted,
          onChanged: (val) => onCheckboxChanged(),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Chip(
                  label: Text('${excercise.weight} kg'),
                  backgroundColor: Colors.grey.shade400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Chip(
                  label: Text('${excercise.reps} reps'),
                  backgroundColor: Colors.grey.shade400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Chip(
                  label: Text('${excercise.sets} sets'),
                  backgroundColor: Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
