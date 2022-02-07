import 'dart:convert';

class Category {
  final String objectId;
  final String title;
  final String iconUrl;

  Category({
    required this.objectId,
    required this.title,
    required this.iconUrl,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Category &&
        other.objectId == objectId &&
        other.title == title &&
        other.iconUrl == iconUrl;
  }

  @override
  int get hashCode => objectId.hashCode ^ title.hashCode ^ iconUrl.hashCode;

  Map<String, dynamic> toMap() {
    return {
      'objectId': objectId,
      'title': title,
      'iconUrl': iconUrl,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      objectId: map['objectId'] ?? '',
      title: map['title'] ?? '',
      iconUrl: map['iconUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source));
}
