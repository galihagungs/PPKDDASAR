// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class testing {
  String name;
  int age;
  testing({required this.name, required this.age});

  testing copyWith({String? name, int? age}) {
    return testing(name: name ?? this.name, age: age ?? this.age);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'age': age};
  }

  factory testing.fromMap(Map<String, dynamic> map) {
    return testing(name: map['name'] as String, age: map['age'] as int);
  }

  String toJson() => json.encode(toMap());

  factory testing.fromJson(String source) =>
      testing.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'testing(name: $name, age: $age)';

  @override
  bool operator ==(covariant testing other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
