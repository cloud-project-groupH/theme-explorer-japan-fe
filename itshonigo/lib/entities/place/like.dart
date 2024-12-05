class Like {
  final int id;
  final String name;

  Like({required this.id, required this.name});

  factory Like.fromJson(Map<String, dynamic> json) {
    return Like(
      id: json['id'] as int,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}