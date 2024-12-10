import '../place/like.dart';
import '../place/visited.dart';

class Member {
  final int id;
  final String nickname;
  final String email;
  final String? profileUrl;

  Member({
    required this.id,
    required this.nickname,
    required this.email,
    this.profileUrl,
  });

  // JSON 데이터를 Dart 객체로 변환
  factory Member.fromJson(Map<String, dynamic> json) {
    return Member(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      email: json['email'] as String,
      profileUrl: json['profileImage'] as String?,
    );
  }

  // Dart 객체를 JSON으로 변환
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nickname': nickname,
      'profileImage': profileUrl,
    };
  }
}