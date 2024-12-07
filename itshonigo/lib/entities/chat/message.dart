

import '../member/member.dart';
import '../chat/chatRoom.dart';

class Message {
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int id;
  final ChatRoom? chatRoom;
  final Member? sender;
  final String content;

  Message({required this.createdAt, required this.updatedAt, required this.id, required this.chatRoom, required this.sender, required this.content});
  
  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'] as int,
      content: json['content'] as String,
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['dcreatedAt'])
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : null,
      sender: json['sender'] != null
          ? Member.fromJson(json['sender'])
          : null,
      chatRoom: json['chatRoom'] != null
          ? ChatRoom.fromJson(json['chatRoom'])
          : null,

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'content': content,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'sender': sender?.toJson(),
      'chatRoom': chatRoom?.toJson(),
    };
  }

}