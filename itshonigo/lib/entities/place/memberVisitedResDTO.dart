class MemberVisitedResDTO {
  final List<int>? placeIds;
  

  MemberVisitedResDTO({required this.placeIds});

  factory MemberVisitedResDTO.fromJson(Map<String, dynamic> json) {
    return MemberVisitedResDTO(
      placeIds: json['placeIds'] != null
          ? json['PlaceIds'] as List<int>
          : null,
      
      

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'placeIds': placeIds,

    };
  }
}