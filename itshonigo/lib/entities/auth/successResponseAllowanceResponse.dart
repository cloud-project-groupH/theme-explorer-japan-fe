import '../auth/allowanceResponse.dart';

class SuccessResponseAllowanceResponse {
  final String message;
  final bool isSuccess;
  final AllowanceResponse? data;

  

  SuccessResponseAllowanceResponse({required this.message, required this.data, required this.isSuccess});

  factory SuccessResponseAllowanceResponse.fromJson(Map<String, dynamic> json) {
    return SuccessResponseAllowanceResponse(
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: json['data'] != null
          ? AllowanceResponse.fromJson(json['data'])
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