class JokeModel {
  final String setup;
  final String delivery;
  JokeModel({
    required this.setup,
    required this.delivery,
  });

  factory JokeModel.fromJson(Map<String, dynamic> json) {
    return JokeModel(
        setup: json["setup"] ?? json["joke"], delivery: json["delivery"] ?? "");
  }

  @override
  String toString() {
    // TODO: implement toString
    return "setup :$setup ,  delivery :$delivery";
  }
}
