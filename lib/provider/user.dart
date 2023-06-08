
import 'package:fluter_workout/data/User_repo.dart';
import 'package:fluter_workout/data/user/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class User extends ChangeNotifier {
  final UserRepo userRepo;

  String joke = "";
  bool isLoading = false;

  UserJson? userJson;

  User({
    required this.userRepo,
  });

  Future<void> getUserData() async {
    isLoading = true;
    notifyListeners();
    Response? response = await userRepo.getUser();
    if (response.statusCode == 200) {
      // userJson = jsonDecode(response.body);
      userJson = UserJson.fromJson(response.body);
      print(userJson);
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
