import 'dart:convert';

import 'info.dart';
import 'result.dart';

class UserJson {
  List<Result>? results;
  Info? info;

  UserJson({this.results, this.info});

  @override
  String toString() => 'UserJson(results: $results, info: $info)';

  factory UserJson.fromMap(Map<String, dynamic> data) => UserJson(
        results: (data['results'] as List<dynamic>?)
            ?.map((e) => Result.fromMap(e as Map<String, dynamic>))
            .toList(),
        info: data['info'] == null
            ? null
            : Info.fromMap(data['info'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'results': results?.map((e) => e.toMap()).toList(),
        'info': info?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [UserJson].
  factory UserJson.fromJson(String data) {
    return UserJson.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [UserJson] to a JSON string.
  String toJson() => json.encode(toMap());
}
