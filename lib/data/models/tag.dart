import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class Tag {
  final String objectId;
  final String name;

  const Tag({
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

  factory Tag.fromParseObject(ParseObject parseObject) {
    return Tag(
      objectId: parseObject.get<String>('objectId') ?? '',
      name: parseObject.get<String>('name') ?? '',
    );
  }
}
