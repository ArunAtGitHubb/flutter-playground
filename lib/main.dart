import 'package:bloc/bloc.dart';
import 'package:fluter_workout/simple_bloc_observer.dart';
import 'package:flutter/material.dart';

import 'app.dart';

void main(List<String> args) {
  Bloc.observer = const SimpleBlocObserver();
  runApp(const App());
}
