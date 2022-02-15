import 'dart:convert';

class RecipeIngredient {
  final String ingrType;
  final String quantity;

  RecipeIngredient({
    required this.ingrType,
    required this.quantity,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RecipeIngredient &&
        other.ingrType == ingrType &&
        other.quantity == quantity;
  }

  @override
  int get hashCode => ingrType.hashCode ^ quantity.hashCode;

  Map<String, dynamic> toMap() {
    return {
      'ingrType': ingrType,
      'quantity': quantity,
    };
  }

  factory RecipeIngredient.fromMap(Map<String, dynamic> map) {
    return RecipeIngredient(
      ingrType: map['ingrType'] ?? '',
      quantity: map['quantity'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RecipeIngredient.fromJson(String source) =>
      RecipeIngredient.fromMap(json.decode(source));

  RecipeIngredient copyWith({
    String? ingrType,
    String? quantity,
  }) {
    return RecipeIngredient(
      ingrType: ingrType ?? this.ingrType,
      quantity: quantity ?? this.quantity,
    );
  }
}
