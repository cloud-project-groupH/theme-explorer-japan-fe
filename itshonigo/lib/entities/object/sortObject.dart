class SortObject {
  final bool sorted;
  final bool unsorted;
  final bool empty;

  SortObject({required this.sorted, required this.unsorted, required this.empty});

  factory SortObject.fromJson(Map<String, dynamic> json) {
    return SortObject(
      sorted: json['sorted'] as bool,
      unsorted: json['unsorted'] as bool,
      empty: json['empty'] as bool,
      

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sorted': sorted,
      'unsorted': unsorted,
      'empty': empty,

    };
  }
}