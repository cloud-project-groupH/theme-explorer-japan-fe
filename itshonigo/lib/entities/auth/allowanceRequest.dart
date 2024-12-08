class AllowanceRequest {
  final String token;
  

  AllowanceRequest({required this.token});

  factory AllowanceRequest.fromJson(Map<String, dynamic> json) {
    return AllowanceRequest(
      token: json['token'] as String,
      
      

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token

    };
  }
}