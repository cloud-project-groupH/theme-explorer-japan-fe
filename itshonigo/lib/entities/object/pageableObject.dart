import '../object/sortObject.dart';

class PageableObject {
  final int offset;
  final int pageNumber;
  final int pageSize;
  final bool paged;
  final bool unpaged;
  final SortObject? sort;

  PageableObject({required this.offset, required this.pageNumber, required this.pageSize, required this.paged, required this.unpaged, required this.sort});

  factory PageableObject.fromJson(Map<String, dynamic> json) {
    return PageableObject(
      offset: json['offset'] as int,
      pageNumber: json['pageNumber'] as int,
      pageSize: json['pageSize'] as int,
      paged: json['paged'] as bool,
      unpaged: json['unpaged'] as bool,
      sort: json['sort'] != null
          ? SortObject.fromJson(json['sort'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'offset': offset,
      'pageNumber': pageNumber,
      'pageSize': pageSize,
      'paged': paged,
      'unpaged': unpaged,
      'sort': sort?.toJson(),
    };
  }
}