class CategoriesProviderException implements Exception {
  final String message;

  CategoriesProviderException(this.message);

  @override
  String toString() => message;
}
