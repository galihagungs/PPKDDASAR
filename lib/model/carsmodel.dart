// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CarsModel {
  String brand;
  String country;
  String image;
  String flag;
  CarsModel({
    required this.brand,
    required this.country,
    required this.image,
    required this.flag,
  });

  CarsModel copyWith({
    String? brand,
    String? country,
    String? image,
    String? flag,
  }) {
    return CarsModel(
      brand: brand ?? this.brand,
      country: country ?? this.country,
      image: image ?? this.image,
      flag: flag ?? this.flag,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brand': brand,
      'country': country,
      'image': image,
      'flag': flag,
    };
  }

  factory CarsModel.fromMap(Map<String, dynamic> map) {
    return CarsModel(
      brand: map['brand'] as String,
      country: map['country'] as String,
      image: map['image'] as String,
      flag: map['flag'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CarsModel.fromJson(String source) =>
      CarsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CarsModel(brand: $brand, country: $country, image: $image, flag: $flag)';
  }

  @override
  bool operator ==(covariant CarsModel other) {
    if (identical(this, other)) return true;

    return other.brand == brand &&
        other.country == country &&
        other.image == image &&
        other.flag == flag;
  }

  @override
  int get hashCode {
    return brand.hashCode ^ country.hashCode ^ image.hashCode ^ flag.hashCode;
  }
}
