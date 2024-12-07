class MemberMapResDTO {
  //final List<int>? placeIds;
  

  MemberMapResDTO();

  factory MemberMapResDTO.fromJson(Map<String, dynamic> json) {
    return MemberMapResDTO(
      //placeIds: json['placeIds'] != null
      //    ? json['PlaceIds'] as List<int>
      //    : null,
      
      

    );
  }

  Map<String, dynamic> toJson() {
    return {
      //'placeIds': placeIds,

    };
  }
}