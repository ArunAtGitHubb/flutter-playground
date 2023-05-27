import 'package:http/http.dart' as http;

class UserRepo {
  Future<http.Response> getUser() async {
    try {
      final response = await http.get(Uri.parse('https://randomuser.me/api'));
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
