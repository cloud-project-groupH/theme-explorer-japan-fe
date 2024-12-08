import '../connection/refreshResponse.dart';

class SuccessResponseRefreshResponse {
  final String message;
  final bool isSuccess;
  final RefreshResponse? data;

  

  SuccessResponseRefreshResponse({required this.message, required this.data, required this.isSuccess});

  factory SuccessResponseRefreshResponse.fromJson(Map<String, dynamic> json) {
    return SuccessResponseRefreshResponse(
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: json['data'] != null
          ? RefreshResponse.fromJson(json['data'])
          : null,
      
      

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'isSuccess': isSuccess,
      'data': data?.toJson(),

    };
  }
}