import 'package:flutter/material.dart';
import 'package:sudoku_starter/game.dart';
import 'package:sudoku_api/sudoku_api.dart';


void main() {

  Puzzle _puzzle = new Puzzle(PuzzleOptions());
  _puzzle.generate().then((_) {
    runApp(MyApp(puzzle: _puzzle ));
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.puzzle});

  final Puzzle puzzle;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Game(title: 'Flutter Demo Home Page', puzzle: widget.puzzle,),
    );
  }
}
