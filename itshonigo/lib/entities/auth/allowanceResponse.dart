class AllowanceResponse {
  final String accessToken;
  final String refreshToken;
  

  AllowanceResponse({required this.accessToken, required this.refreshToken});

  factory AllowanceResponse.fromJson(Map<String, dynamic> json) {
    return AllowanceResponse(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      
      

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'refreshToken': refreshToken,

    };
  }
}