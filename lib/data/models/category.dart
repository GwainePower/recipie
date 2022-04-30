import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class Category {
  final String objectId;
  final String title;
  final String image;

  Category({
    required this.objectId,
    required this.title,
    required this.image,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Category &&
        other.objectId == objectId &&
        other.title == title &&
        other.image == image;
  }

  @override
  int get hashCode => objectId.hashCode ^ title.hashCode ^ image.hashCode;

  @override
  String toString() =>
      'Category(objectId: $objectId, title: $title, image: $image)';

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      objectId: map['objectId'] ?? '',
      title: map['title'] ?? '',
      image: map['image'] ?? '',
    );
  }

  factory Category.fromParseObject(ParseObject parseObject) {
    return Category(
        objectId: parseObject.get<String>('objectId') ?? '',
        title: parseObject.get<String>('title') ?? '',
        image: parseObject.get('image').url ?? '');
  }
}
