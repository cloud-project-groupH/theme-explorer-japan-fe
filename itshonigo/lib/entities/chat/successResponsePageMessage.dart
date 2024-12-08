import '../chat/pageMessage.dart';

class SuccessResponsePageMessage {
  final String message;
  final bool isSuccess;
  final PageMessage? data;

  

  SuccessResponsePageMessage({required this.message, required this.data, required this.isSuccess});

  factory SuccessResponsePageMessage.fromJson(Map<String, dynamic> json) {
    return SuccessResponsePageMessage(
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: json['data'] != null
          ? PageMessage.fromJson(json['data'])
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