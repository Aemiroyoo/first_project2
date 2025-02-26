// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Namemodel {
    final String  nameSchool;
    final String  address;
    final String  phone;
  Namemodel({
    required this.nameSchool,
    required this.address,
    required this.phone,
  });

  Namemodel copyWith({
    String? nameSchool,
    String? address,
    String? phone,
  }) {
    return Namemodel(
      nameSchool: nameSchool ?? this.nameSchool,
      address: address ?? this.address,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameSchool': nameSchool,
      'address': address,
      'phone': phone,
    };
  }

  factory Namemodel.fromMap(Map<String, dynamic> map) {
    return Namemodel(
      nameSchool: map['nameSchool'] as String,
      address: map['address'] as String,
      phone: map['phone'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Namemodel.fromJson(String source) => Namemodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Namemodel(nameSchool: $nameSchool, address: $address, phone: $phone)';

  @override
  bool operator ==(covariant Namemodel other) {
    if (identical(this, other)) return true;
  
    return 
      other.nameSchool == nameSchool &&
      other.address == address &&
      other.phone == phone;
  }

  @override
  int get hashCode => nameSchool.hashCode ^ address.hashCode ^ phone.hashCode;
}
