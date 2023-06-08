import 'package:fluter_workout/provider/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/UserProfile.dart';

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate Random User'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<User>(
              builder: (context, value, child) => value.userJson != null
                  ? UserProfile(
                      userJson: value.userJson!,
                    )
                  : Text(
                      'Click the plus symbol to generate new Profile',
                      style: TextStyle(fontSize: 18.0),
                    ),
            ),
            Consumer<User>(
              builder: (context, value, child) =>
                  value.isLoading ? CircularProgressIndicator() : SizedBox(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<User>(context, listen: false).getUserData();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
