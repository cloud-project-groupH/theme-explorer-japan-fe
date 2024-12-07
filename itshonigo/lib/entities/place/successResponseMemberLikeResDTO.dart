import '../place/memberLikeResDTO.dart';

class SuccessResponseMemberLikeResDTO {
  final String message;
  final bool isSuccess;
  final MemberLikeResDTO? data;

  

  SuccessResponseMemberLikeResDTO({required this.message, required this.data, required this.isSuccess});

  factory SuccessResponseMemberLikeResDTO.fromJson(Map<String, dynamic> json) {
    return SuccessResponseMemberLikeResDTO(
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: json['data'] != null
          ? MemberLikeResDTO.fromJson(json['data'])
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