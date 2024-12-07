import '../place/adress.dart';

class Place {
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Address? address;
  final int id;
  final String title;
  final String latitude;
  final String longitude;
  final int likes;
  final int visited;

  Place({required this.createdAt, required this.updatedAt, required this.id, required this.address, required this.title, required this.latitude,required this.longitude, required this.likes, required this.visited});

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['dcreatedAt'])
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : null,
      id: json['id'] as int,
      likes: json['likes'] as int,
      visited: json['visited'] as int,
      title: json['title'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude']as String,
      address: json['address'] != null
          ? Address.fromJson(json['address'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'latitude': latitude,
      'longitude': longitude,
      'likes': likes,
      'visited': visited,
      'title': title,
      'address': address?.toJson(),
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }
}