

import '../member/member.dart';
import '../chat/chatRoom.dart';

class Participant {
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int id;
  final ChatRoom? chatRoom;
  final Member? member;


  Participant({required this.createdAt, required this.updatedAt, required this.id, required this.chatRoom, required this.member});
  
  factory Participant.fromJson(Map<String, dynamic> json) {
    return Participant(
      id: json['id'] as int,
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['dcreatedAt'])
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : null,
      member: json['member'] != null
          ? Member.fromJson(json['member'])
          : null,
      chatRoom: json['chatRoom'] != null
          ? ChatRoom.fromJson(json['chatRoom'])
          : null,

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'member': member?.toJson(),
      'chatRoom': chatRoom?.toJson(),
    };
  }

}