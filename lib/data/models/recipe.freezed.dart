// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return _Recipe.fromJson(json);
}

/// @nodoc
class _$RecipeTearOff {
  const _$RecipeTearOff();

  _Recipe call(
      {required String? id,
      String? userId,
      required String categoryId,
      required String title,
      required int cookTime,
      required int kcal,
      required List<String> ingredients,
      required List<String> steps,
      required String pictureUrl,
      bool isFavorite = false}) {
    return _Recipe(
      id: id,
      userId: userId,
      categoryId: categoryId,
      title: title,
      cookTime: cookTime,
      kcal: kcal,
      ingredients: ingredients,
      steps: steps,
      pictureUrl: pictureUrl,
      isFavorite: isFavorite,
    );
  }

  Recipe fromJson(Map<String, Object?> json) {
    return Recipe.fromJson(json);
  }
}

/// @nodoc
const $Recipe = _$RecipeTearOff();

/// @nodoc
mixin _$Recipe {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get cookTime => throw _privateConstructorUsedError;
  int get kcal => throw _privateConstructorUsedError;
  List<String> get ingredients => throw _privateConstructorUsedError;
  List<String> get steps => throw _privateConstructorUsedError;
  String get pictureUrl => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? userId,
      String categoryId,
      String title,
      int cookTime,
      int kcal,
      List<String> ingredients,
      List<String> steps,
      String pictureUrl,
      bool isFavorite});
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res> implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  final Recipe _value;
  // ignore: unused_field
  final $Res Function(Recipe) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? title = freezed,
    Object? cookTime = freezed,
    Object? kcal = freezed,
    Object? ingredients = freezed,
    Object? steps = freezed,
    Object? pictureUrl = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cookTime: cookTime == freezed
          ? _value.cookTime
          : cookTime // ignore: cast_nullable_to_non_nullable
              as int,
      kcal: kcal == freezed
          ? _value.kcal
          : kcal // ignore: cast_nullable_to_non_nullable
              as int,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      steps: steps == freezed
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pictureUrl: pictureUrl == freezed
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$RecipeCopyWith(_Recipe value, $Res Function(_Recipe) then) =
      __$RecipeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? userId,
      String categoryId,
      String title,
      int cookTime,
      int kcal,
      List<String> ingredients,
      List<String> steps,
      String pictureUrl,
      bool isFavorite});
}

/// @nodoc
class __$RecipeCopyWithImpl<$Res> extends _$RecipeCopyWithImpl<$Res>
    implements _$RecipeCopyWith<$Res> {
  __$RecipeCopyWithImpl(_Recipe _value, $Res Function(_Recipe) _then)
      : super(_value, (v) => _then(v as _Recipe));

  @override
  _Recipe get _value => super._value as _Recipe;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? categoryId = freezed,
    Object? title = freezed,
    Object? cookTime = freezed,
    Object? kcal = freezed,
    Object? ingredients = freezed,
    Object? steps = freezed,
    Object? pictureUrl = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_Recipe(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cookTime: cookTime == freezed
          ? _value.cookTime
          : cookTime // ignore: cast_nullable_to_non_nullable
              as int,
      kcal: kcal == freezed
          ? _value.kcal
          : kcal // ignore: cast_nullable_to_non_nullable
              as int,
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      steps: steps == freezed
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pictureUrl: pictureUrl == freezed
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Recipe extends _Recipe {
  const _$_Recipe(
      {required this.id,
      this.userId,
      required this.categoryId,
      required this.title,
      required this.cookTime,
      required this.kcal,
      required this.ingredients,
      required this.steps,
      required this.pictureUrl,
      this.isFavorite = false})
      : super._();

  factory _$_Recipe.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String categoryId;
  @override
  final String title;
  @override
  final int cookTime;
  @override
  final int kcal;
  @override
  final List<String> ingredients;
  @override
  final List<String> steps;
  @override
  final String pictureUrl;
  @JsonKey()
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'Recipe(id: $id, userId: $userId, categoryId: $categoryId, title: $title, cookTime: $cookTime, kcal: $kcal, ingredients: $ingredients, steps: $steps, pictureUrl: $pictureUrl, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Recipe &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.cookTime, cookTime) &&
            const DeepCollectionEquality().equals(other.kcal, kcal) &&
            const DeepCollectionEquality()
                .equals(other.ingredients, ingredients) &&
            const DeepCollectionEquality().equals(other.steps, steps) &&
            const DeepCollectionEquality()
                .equals(other.pictureUrl, pictureUrl) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(categoryId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(cookTime),
      const DeepCollectionEquality().hash(kcal),
      const DeepCollectionEquality().hash(ingredients),
      const DeepCollectionEquality().hash(steps),
      const DeepCollectionEquality().hash(pictureUrl),
      const DeepCollectionEquality().hash(isFavorite));

  @JsonKey(ignore: true)
  @override
  _$RecipeCopyWith<_Recipe> get copyWith =>
      __$RecipeCopyWithImpl<_Recipe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeToJson(this);
  }
}

abstract class _Recipe extends Recipe {
  const factory _Recipe(
      {required String? id,
      String? userId,
      required String categoryId,
      required String title,
      required int cookTime,
      required int kcal,
      required List<String> ingredients,
      required List<String> steps,
      required String pictureUrl,
      bool isFavorite}) = _$_Recipe;
  const _Recipe._() : super._();

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$_Recipe.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String get categoryId;
  @override
  String get title;
  @override
  int get cookTime;
  @override
  int get kcal;
  @override
  List<String> get ingredients;
  @override
  List<String> get steps;
  @override
  String get pictureUrl;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$RecipeCopyWith<_Recipe> get copyWith => throw _privateConstructorUsedError;
}
