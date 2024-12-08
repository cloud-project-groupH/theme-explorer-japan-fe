import '../auth/grantedAuthority.dart';

class CustomOAuth2User {
  final String name;
  final String role;
  //final List<Attribute>? attributes; 
  final String email;
  final int memberId;
  final bool allowance;
  final String nickname;
  final String profileImage;
  final List<GrantedAuthority>? authorities;
  

  CustomOAuth2User({required this.allowance, required this.authorities, required this.email, required this.memberId, required this.name, required this.nickname, required this.profileImage, required this.role});

  factory CustomOAuth2User.fromJson(Map<String, dynamic> json) {
    return CustomOAuth2User(
      name: json['name'] as String,
      role: json['role'] as String,
      email: json['email'] as String,
      memberId: json['memberId'] as int,
      allowance: json['allowance'] as bool,
      nickname: json['nickname'] as String,
      profileImage: json['profileImage'] as String,
      authorities: json['authorities'] != null
          ? (json['authorities'] as List).map((e) => GrantedAuthority.fromJson(e)).toList()
          : null,     
      

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'role': role,
      'email': email,
      'memberId': memberId,
      'allowance': allowance,
      'nickname': nickname,
      'profileImage': profileImage,
      'authorities': authorities?.map((e) => e.toJson()).toList(),

    };
  }
}