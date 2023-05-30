import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluter_workout/data/user/user.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  UserJson userJson;
  UserProfile({required this.userJson});

  @override
  Widget build(BuildContext context) {
    var name =
        "${userJson.results![0].name!.first.toString()} ${userJson.results![0].name!.last.toString()}";
    var email = userJson.results![0].email.toString();
    var phone = userJson.results![0].phone.toString();
    DateTime? dob = userJson.results![0].dob?.date;
    return Container(
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: userJson.results![0].picture!.medium.toString(),
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                CircularProgressIndicator(value: downloadProgress.progress),
            errorWidget: (context, url, error) =>
                Icon(Icons.error_outline_outlined),
          ),
          SizedBox(height: 10),
          Text("Name: $name"),
          SizedBox(height: 10),
          Text("Email: $email"),
          SizedBox(height: 10),
          Text("DOB: ${dob?.day}/${dob?.month}/${dob?.year}"),
          SizedBox(height: 10),
          Text("Phone: $phone"),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
