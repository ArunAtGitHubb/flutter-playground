import 'package:fluter_workout/data/user/user.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  UserJson userJson;
  UserProfile({required this.userJson});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(userJson.results![0].picture!.large.toString()),
          SizedBox(height: 10),
          Text("First Name: " + userJson.results![0].name!.first.toString()),
          SizedBox(height: 10),
          Text("Last Name: " + userJson.results![0].name!.last.toString()),
          SizedBox(height: 10),
          Text(userJson.results![0].name!.first.toString()),
          SizedBox(height: 10),
          Text(userJson.results![0].name!.first.toString()),
        ],
      ),
    );
  }
}
