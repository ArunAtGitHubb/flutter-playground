import 'package:http/http.dart' as http;

class JokeRepo {
  Future<http.Response> getJoke() async {
    try {
      final response =
          await http.get(Uri.parse('https://api.chucknorris.io/jokes/random'));
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
