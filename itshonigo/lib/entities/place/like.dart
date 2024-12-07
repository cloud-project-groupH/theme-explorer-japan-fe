import '../member/member.dart';
import '../place/place.dart';


class Like {
  final int id;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Member? member;
  final Place? place;

  Like({required this.id, required this.createdAt, required this.updatedAt, required this.member, required this.place});

  factory Like.fromJson(Map<String, dynamic> json) {
    return Like(
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