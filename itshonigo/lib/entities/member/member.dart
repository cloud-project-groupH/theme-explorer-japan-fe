import '../place/like.dart';
import '../place/visited.dart';

class Member {
  final int id;
  final String nickname;
  final String email;
  final String? profileImage;
  final bool? allowance;
  final String role;
  final DateTime? deletedAt;
  final List<Like>? likes;
  final List<Visited>? visited;

  Member({
    required this.id,
    required this.nickname,
    required this.email,
    this.profileImage,
    this.allowance,
    required this.role,
    this.deletedAt,
    this.likes,
    this.visited,
  });

  // JSON 데이터를 Dart 객체로 변환
  factory Member.fromJson(Map<String, dynamic> json) {
    return Member(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      email: json['email'] as String,
      profileImage: json['profileImage'] as String?,
      allowance: json['allowance'] as bool?,
      role: json['role'] as String,
      deletedAt: json['deletedAt'] != null
          ? DateTime.parse(json['deletedAt'])
          : null,
      likes: json['likes'] != null
          ? (json['likes'] as List).map((e) => Like.fromJson(e)).toList()
          : null,
      visited: json['visited'] != null
          ? (json['visited'] as List).map((e) => Visited.fromJson(e)).toList()
          : null,
    );
  }

  // Dart 객체를 JSON으로 변환
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nickname': nickname,
      'email': email,
      'profileImage': profileImage,
      'allowance': allowance,
      'role': role,
      'deletedAt': deletedAt?.toIso8601String(),
      'likes': likes?.map((e) => e.toJson()).toList(),
      'visited': visited?.map((e) => e.toJson()).toList(),
    };
  }
}