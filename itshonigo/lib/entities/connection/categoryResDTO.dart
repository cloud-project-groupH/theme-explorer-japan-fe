import 'dart:ffi';

class CategoryResDTO {
  final String title;
  final int id;
  

  CategoryResDTO({required this.title, required this.id});

  factory CategoryResDTO.fromJson(Map<String, dynamic> json) {
    return CategoryResDTO(
      title: json['title'] as String,
      id: json['id'] as int,
      
      

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'id': id,

    };
  }
}