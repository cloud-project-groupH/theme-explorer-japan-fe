class MemberLikeResDTO {
  final List<int>? placeIds;
  

  MemberLikeResDTO({required this.placeIds});

  factory MemberLikeResDTO.fromJson(Map<String, dynamic> json) {
    return MemberLikeResDTO(
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