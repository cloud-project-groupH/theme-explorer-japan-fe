import '../place/memberMapResDTO.dart';

class SuccessResponseMemberMapResDTO {
  final String message;
  final bool isSuccess;
  final MemberMapResDTO? data;

  

  SuccessResponseMemberMapResDTO({required this.message, required this.data, required this.isSuccess});

  factory SuccessResponseMemberMapResDTO.fromJson(Map<String, dynamic> json) {
    return SuccessResponseMemberMapResDTO(
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: json['data'] != null
          ? MemberMapResDTO.fromJson(json['data'])
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