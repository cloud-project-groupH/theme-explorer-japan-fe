import '../place/place.dart';
import '../member/member.dart';

class Visited {
  final int id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Place? place;
  final Member? member;

  Visited({required this.id, required this.createdAt, required this.updatedAt, required this.member, required this.place});

  factory Visited.fromJson(Map<String, dynamic> json) {
    return Visited(
      id: json['id'] as int,
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['dcreatedAt'])
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : null,
      member: json['member'] != null
          ? Member.fromJson(json['member'])
          : null,
      place: json['place'] != null
          ? Place.fromJson(json['place'])
          : null,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'member': member?.toJson(),
      'place': place?.toJson(),
    };
  }
}