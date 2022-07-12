class TagsProviderException implements Exception {
  final String message;

  TagsProviderException(this.message);

  @override
  String toString() => message;
}
