class Visited {
  final int id;
  final String placeName;

  Visited({required this.id, required this.placeName});

  factory Visited.fromJson(Map<String, dynamic> json) {
    return Visited(
      id: json['id'] as int,
      placeName: json['placeName'] as String,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'placeName': placeName,
    };
  }
}