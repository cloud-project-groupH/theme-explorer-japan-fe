class GrantedAuthority {
  final String token;
  

  GrantedAuthority({required this.token});

  factory GrantedAuthority.fromJson(Map<String, dynamic> json) {
    return GrantedAuthority(
      token: json['token'] as String,
      
      

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token

    };
  }
}