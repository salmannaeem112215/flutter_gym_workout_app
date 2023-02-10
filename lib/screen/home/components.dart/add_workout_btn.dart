import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/workout_data.dart';

class AddWorkOutButton extends StatelessWidget {
  AddWorkOutButton({super.key, required this.ctx});
  final BuildContext ctx;
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: _showAddWorkoutCard,
      child: const Icon(Icons.add),
    );
  }

  // Card to Enter Details for a new workout
  void _showAddWorkoutCard() {
    showDialog(
      context: ctx,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(controller: _controller),
            const SizedBox(height: 20),
            // Save And Cancel Button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton(
                    onPressed: _onCancel, child: const Text('Cancel')),
                const SizedBox(width: 5),
                ElevatedButton(onPressed: _onSave, child: const Text(' Save ')),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Dispose Show Dialog card
  void _onCancel() {
    _clear();
  }

  // Add Workout
  void _onSave() {
    Provider.of<WorkoutData>(ctx, listen: false).addWorkout(_controller.text);
    _clear();
  }

  // Clear text in TextField && Pop Card
  void _clear() {
    _controller.text = "";
    Navigator.pop(ctx);
  }
}
