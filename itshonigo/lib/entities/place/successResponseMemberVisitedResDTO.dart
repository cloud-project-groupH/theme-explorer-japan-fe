import '../place/memberVisitedResDTO.dart';

class SuccessResponseMemberVisitedResDTO {
  final String message;
  final bool isSuccess;
  final MemberVisitedResDTO? data;

  

  SuccessResponseMemberVisitedResDTO({required this.message, required this.data, required this.isSuccess});

  factory SuccessResponseMemberVisitedResDTO.fromJson(Map<String, dynamic> json) {
    return SuccessResponseMemberVisitedResDTO(
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: json['data'] != null
          ? MemberVisitedResDTO.fromJson(json['data'])
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