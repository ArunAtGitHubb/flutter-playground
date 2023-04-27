import 'package:fluter_workout/provider/joke.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boring Jokes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Joke>(
              builder: (context, value, child) => Text('${value.joke}'),
            ),
            Consumer<Joke>(
              builder: (context, value, child) =>
                  value.isLoading ? CircularProgressIndicator() : SizedBox(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Joke>(context, listen: false).getJoke();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
