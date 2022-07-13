class RecipesProviderException implements Exception {
  final String message;

  RecipesProviderException(this.message);

  @override
  String toString() => message;
}
