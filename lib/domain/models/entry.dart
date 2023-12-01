// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Entry {
  int id;
  String name;
  String category;
  String description;
  String commonLocations;
  String image;

  Entry({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.commonLocations,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'category': category,
      'description': description,
      'commonLocations': commonLocations,
      'image': image,
    };
  }

  factory Entry.fromMap(Map<String, dynamic> map) {
    return Entry(
      id: map['id'] as int,
      name: map['name'] as String,
      category: map['category'] as String,
      description: map['description'] as String,
      commonLocations: map['commonLocations'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Entry.fromJson(String source) =>
      Entry.fromMap(json.decode(source) as Map<String, dynamic>);
}
