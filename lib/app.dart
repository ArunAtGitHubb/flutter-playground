import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/counter.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Provider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pressed this many times: '),
            Consumer<Counter>(
              builder: (context, value, child) => Text('${value.count} times'),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Provider.of<Counter>(context, listen: false).increment();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              Provider.of<Counter>(context, listen: false).reset();
            },
            child: Icon(Icons.lock_reset),
          ),
        ],
      ),
    );
  }
}
