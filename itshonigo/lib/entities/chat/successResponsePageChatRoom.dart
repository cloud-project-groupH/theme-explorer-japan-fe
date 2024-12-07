import '../chat/pageChatRoom.dart';

class SuccessResponsePageChatRoom {
  final String message;
  final bool isSuccess;
  final PageChatRoom? data;

  

  SuccessResponsePageChatRoom({required this.message, required this.data, required this.isSuccess});

  factory SuccessResponsePageChatRoom.fromJson(Map<String, dynamic> json) {
    return SuccessResponsePageChatRoom(
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: json['data'] != null
          ? PageChatRoom.fromJson(json['data'])
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