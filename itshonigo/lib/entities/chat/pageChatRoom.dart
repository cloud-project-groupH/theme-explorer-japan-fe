import '../chat/chatRoom.dart';
import '../object/pageableObject.dart';
import '../object/sortObject.dart';



class PageChatRoom {
  final int totalPages;
  final int totalElements;
  final int size;
  final int number;
  final int numberOfElements;
  final bool first;
  final bool last;
  final bool empty;
  final SortObject? sort;
  final PageableObject? pageable;
  final List<ChatRoom>? content;

  PageChatRoom({required this.content, required this.totalElements, required this.empty, required this.first, required this.last, required this.number, required this.numberOfElements, required this.pageable, required this.size, required this.sort, required this.totalPages});

  factory PageChatRoom.fromJson(Map<String, dynamic> json) {
    return PageChatRoom(
    totalPages: json['totalPages'] as int,
    totalElements: json['totalElements'] as int,
    size: json['size'] as int,
    number: json['number'] as int,
    numberOfElements: json['numberOfElements'] as int,
    first: json['first'] as bool,
    last: json['last'] as bool,
    empty: json['empty'] as bool,     
    sort: json['sort'] != null
        ? SortObject.fromJson(json['sort'])
        : null,
    pageable: json['pageable'] != null
        ? PageableObject.fromJson(json['pageable'])
        : null,
    content: json['content'] != null
          ? (json['content'] as List).map((e) => ChatRoom.fromJson(e)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'totalPages': totalPages,
      'totalElements': totalElements,
      'size': size,
      'number': number,
      'numberOfElements': numberOfElements,
      'first': first,
      'last': last,
      'empty': empty,
      'sort': sort?.toJson(),
      'pageable': pageable?.toJson(),
      'content': content?.map((e) => e.toJson()).toList(),
    };
  }
}