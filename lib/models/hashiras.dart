// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class HashiraModel {

  static List<Hashira> hashiras = [];
  //  = [
  //   Hashira(
  //     id: 1,
  //     name: "Giyu Tomioka",
  //     description: "Water Hashira",
  //     image_url:
  //         "https://imgs.search.brave.com/fy-0y5-Kq2JxogVi2jzyPveMgYQuTpZewOqDcTKUmEo/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/d2FsbHBhcGVyc2Fm/YXJpLmNvbS83Mi8y/OS9FNEZrR28uanBn",
  //   )
  // ];
}

class Hashira {
  final int id;
  final String name;
  final String description;
  final String image_url;

  Hashira({
    required this.id,
    required this.name,
    required this.description,
    required this.image_url,
  });



  Hashira copyWith({
    int? id,
    String? name,
    String? description,
    String? image_url,
  }) {
    return Hashira(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      image_url: image_url ?? this.image_url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'image_url': image_url,
    };
  }

  factory Hashira.fromMap(Map<String, dynamic> map) {
    return Hashira(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
      image_url: map['image_url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Hashira.fromJson(String source) => Hashira.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Hashira(id: $id, name: $name, description: $description, image_url: $image_url)';
  }

  @override
  bool operator ==(covariant Hashira other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.image_url == image_url;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      image_url.hashCode;
  }
}



