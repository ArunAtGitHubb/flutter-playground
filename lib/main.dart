import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'provider/counter.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MaterialApp(
        title: 'Flutter Provider Example',
        home: App(),
      ),
    );
  }
}
