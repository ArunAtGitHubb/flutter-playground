import 'package:fluter_workout/provider/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'data/User_repo.dart';

void main(List<String> args) async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  // await FirebaseAuth.instance.useAuthEmulator("localhost", 9099);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => User(userRepo: UserRepo()),
      child: MaterialApp(
        title: 'Flutter Provider Example',
        home: App(),
      ),
    );
  }
}
