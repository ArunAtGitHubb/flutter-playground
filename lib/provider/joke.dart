import 'dart:convert';
import 'dart:io';

import 'package:fluter_workout/data/joke_model.dart';
import 'package:fluter_workout/data/joke_repo.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Joke extends ChangeNotifier {
  final JokeRepo jokeRepo;

  String joke = "";
  bool isLoading = false;

  Joke({required this.jokeRepo});

  Future<void> getJoke() async {
    isLoading = true;
    notifyListeners();
    Response? response = await jokeRepo.getJoke();
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonMap = jsonDecode(response.body);
      joke = jsonMap["value"];
      isLoading = false;
      notifyListeners();
    } else {
      isLoading = false;
      notifyListeners();
      // If the server did not return a 200 OK response, throw an error.
      throw Exception('Failed to load album');
    }
  }
}
