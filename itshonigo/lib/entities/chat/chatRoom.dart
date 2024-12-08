

import '../member/member.dart';
import '../chat/message.dart';
import '../chat/participant.dart';

class ChatRoom {
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int id;
  final String title;
  final List<Message>? messages;
  final List<Participant>? participants;

  ChatRoom({required this.createdAt, required this.updatedAt, required this.id, required this.title, required this.messages, required this.participants});
  
  factory ChatRoom.fromJson(Map<String, dynamic> json) {
    return ChatRoom(
      id: json['id'] as int,
      title: json['title'] as String,
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['dcreatedAt'])
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : null,
      messages: json['messages'] != null
          ? (json['messages'] as List).map((e) => Message.fromJson(e)).toList()
          : null,
      participants: json['participants'] != null
          ? (json['participants'] as List).map((e) => Participant.fromJson(e)).toList()
          : null,

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'messages': messages?.map((e) => e.toJson()).toList(),
      'participants': participants?.map((e) => e.toJson()).toList(),
    };
  }

}