class JokeModel {
  String url = "";
  String id = "";
  String joke = "";

  JokeModel({
    this.url = "",
    this.id = "",
    this.joke = "",
  });

  JokeModel.fromJson(Map<String, dynamic> json) {
    url = json["url"];
    id = json["id"];
    joke = json["value"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["joke"] = this.joke;
    data["url"] = this.url;
    return data;
  }
}
