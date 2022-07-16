// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CityModel {
  final int id;
  final String name;
  final String image;
  final String description;

  CityModel({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });

  CityModel copyWith({
    int? id,
    String? name,
    String? image,
    String? description,
  }) {
    return CityModel(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'description': description,
    };
  }

  factory CityModel.fromMap(Map<String, dynamic> map) {
    return CityModel(
      id: map['id'] as int,
      name: map['name'] as String,
      image: map['image'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CityModel.fromJson(String source) =>
      CityModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CityModel(id: $id, name: $name, image: $image, description: $description)';
  }

  @override
  bool operator ==(covariant CityModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.image == image &&
        other.description == description;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ image.hashCode ^ description.hashCode;
  }
}
