import 'package:fluter_workout/data/joke_repo.dart';
import 'package:fluter_workout/provider/joke.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Joke(jokeRepo: JokeRepo()),
      child: MaterialApp(
        title: 'Flutter Provider Example',
        home: App(),
      ),
    );
  }
}
