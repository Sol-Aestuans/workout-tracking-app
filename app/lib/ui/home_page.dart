import 'package:flutter/material.dart';
import 'index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  final String title = "Home Page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: () {print("Account page");}, icon: const Icon(Icons.account_circle)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => WorkoutBuilderPage()));
              },
              child: Text("Create New Workout"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarPage()));
              },
              child: Text("View Calendar"),
            ),
            ],
          )
      )
    );
  }
}