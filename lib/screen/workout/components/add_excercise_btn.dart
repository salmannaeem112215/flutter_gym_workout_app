import 'package:flutter/material.dart';
import 'package:flutter_gym_workout_app/data/workout_data.dart';
import 'package:provider/provider.dart';

class AddExcerciseButton extends StatelessWidget {
  AddExcerciseButton({super.key, required this.workoutName});

  final String workoutName;
  final _nameController = TextEditingController();
  final _weightController = TextEditingController();
  final _repsController = TextEditingController();
  final _setsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('New Excercise Details'),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      hintText: 'Name',
                    ),
                  ),
                  TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Weight (KG)',
                    ),
                  ),
                  TextField(
                    controller: _repsController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Reps',
                    ),
                  ),
                  TextField(
                    controller: _setsController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Sets',
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              OutlinedButton(
                child: const Text('Cancel'),
                onPressed: () => _onCancel(context),
              ),
              ElevatedButton(
                child: const Text(' Save '),
                onPressed: () => _onSave(context),
              )
            ],
          ),
        );
      },
      child: const Icon(Icons.add),
    );
  }

  void _clear() {
    _nameController.text = "";
    _weightController.text = "";
    _repsController.text = "";
    _setsController.text = "";
  }

  void _onCancel(BuildContext context) {
    _clear();
    Navigator.pop(context);
  }

  void _onSave(BuildContext context) {
    Provider.of<WorkoutData>(context, listen: false).addExcercise(
      workoutName: workoutName,
      excerciseName: _nameController.text,
      weight: _weightController.text,
      reps: _repsController.text,
      sets: _setsController.text,
    );

    _clear();
    Navigator.pop(context);
  }
}
