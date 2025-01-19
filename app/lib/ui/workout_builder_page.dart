import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_app/view_models/exercise_view_model';
class WorkoutBuilderPage extends StatefulWidget {
  const WorkoutBuilderPage({super.key});

  final String title = "Workout Builder";

  @override
  State<WorkoutBuilderPage> createState() => _WorkoutBuilderPageState();
}

class _WorkoutBuilderPageState extends State<WorkoutBuilderPage> {

  @override
  Widget build(BuildContext context) {
    ExerciseViewModel exerciseViewModel = context.watch<ExerciseViewModel>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {print("Account page");},
            icon: const Icon(Icons.account_circle)),
        ],
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => exerciseViewModel.add(),
            child: Text("New exercise")
          ),
          Expanded(
            child: ListenableBuilder(
              listenable: exerciseViewModel,
              builder: (BuildContext context, Widget? child) {
                final List<String> exercises = exerciseViewModel.exercises;

                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) => ListTile(
                    title: Text(exercises[index]),
                  ),
                  itemCount: exercises.length,
                );
              }
            ),
          )
        ],
      )
    );
  }
}