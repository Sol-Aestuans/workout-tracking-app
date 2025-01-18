import 'package:flutter/material.dart';

class WorkoutBuilderPage extends StatefulWidget {
  const WorkoutBuilderPage({super.key});

  final String title = "Workout Builder";

  @override
  State<WorkoutBuilderPage> createState() => _WorkoutBuilderPageState();
}

class _WorkoutBuilderPageState extends State<WorkoutBuilderPage> {
  
  List<String> exercises = [];

  void addExercise() {
    setState(() {
      exercises.add("Exercise ${exercises.length + 1}");
    });
  }

  @override
  Widget build(BuildContext context) {
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
            onPressed: addExercise,
            child: Text("New exercise")
          ),
          Expanded(
            
            child: ListView.builder(
              itemCount: exercises.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(exercises[index]),
                );
              }
            ),
          )
        ],
      )
    );
  }
}