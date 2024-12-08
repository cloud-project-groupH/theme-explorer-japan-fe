class Address {
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int id;
  final String city;
  final String district;
  final String street;

  Address({required this.createdAt, required this.updatedAt, required this.id, required this.city, required this.district, required this.street});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['dcreatedAt'])
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : null,
      id: json['id'] as int,
      city: json['city'] as String,
      district: json['district'] as String,
      street: json['street']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'city': city,
      'district': district,
      'street': street,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }
}