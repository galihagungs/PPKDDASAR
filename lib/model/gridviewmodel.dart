// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class Gridmodel {
  String name;
  String image;
  Color color;
  Gridmodel({required this.name, required this.image, required this.color});

  Gridmodel copyWith({String? name, String? image, Color? color}) {
    return Gridmodel(
      name: name ?? this.name,
      image: image ?? this.image,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'image': image,
      'color': color.value,
    };
  }

  factory Gridmodel.fromMap(Map<String, dynamic> map) {
    return Gridmodel(
      name: map['name'] as String,
      image: map['image'] as String,
      color: Color(map['color'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory Gridmodel.fromJson(String source) =>
      Gridmodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Gridmodel(name: $name, image: $image, color: $color)';

  @override
  bool operator ==(covariant Gridmodel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.image == image && other.color == color;
  }

  @override
  int get hashCode => name.hashCode ^ image.hashCode ^ color.hashCode;
}
