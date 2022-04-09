import 'dart:convert';

class Tag {
  final String objectId;
  final String name;

  Tag({
    required this.objectId,
    required this.name,
  });

  Tag copyWith({
    String? objectId,
    String? name,
  }) {
    return Tag(
      objectId: objectId ?? this.objectId,
      name: name ?? this.name,
    );
  }

  @override
  String toString() => 'Tag(objectId: $objectId, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Tag && other.objectId == objectId && other.name == name;
  }

  @override
  int get hashCode => objectId.hashCode ^ name.hashCode;

  Map<String, dynamic> toMap() {
    return {
      'objectId': objectId,
      'Name': name,
    };
  }

  factory Tag.fromMap(Map<String, dynamic> map) {
    return Tag(
      objectId: map['objectId'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Tag.fromJson(String source) => Tag.fromMap(json.decode(source));
}
