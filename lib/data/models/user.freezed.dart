// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String? userId,
      required String email,
      required String userName,
      String? fullName,
      int? age,
      String? pictureUrl,
      bool hideEmail = false,
      bool hideFullName = false,
      bool hideAge = false}) {
    return _User(
      userId: userId,
      email: email,
      userName: userName,
      fullName: fullName,
      age: age,
      pictureUrl: pictureUrl,
      hideEmail: hideEmail,
      hideFullName: hideFullName,
      hideAge: hideAge,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String? get userId => throw _privateConstructorUsedError;
  String get email =>
      throw _privateConstructorUsedError; // Почта - метод аутентификации - required
  String get userName =>
      throw _privateConstructorUsedError; // User name - если юзер захочет скрыть свое имя
  String? get fullName => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get pictureUrl => throw _privateConstructorUsedError;
  bool get hideEmail => throw _privateConstructorUsedError;
  bool get hideFullName => throw _privateConstructorUsedError;
  bool get hideAge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String? userId,
      String email,
      String userName,
      String? fullName,
      int? age,
      String? pictureUrl,
      bool hideEmail,
      bool hideFullName,
      bool hideAge});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? userName = freezed,
    Object? fullName = freezed,
    Object? age = freezed,
    Object? pictureUrl = freezed,
    Object? hideEmail = freezed,
    Object? hideFullName = freezed,
    Object? hideAge = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      pictureUrl: pictureUrl == freezed
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hideEmail: hideEmail == freezed
          ? _value.hideEmail
          : hideEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      hideFullName: hideFullName == freezed
          ? _value.hideFullName
          : hideFullName // ignore: cast_nullable_to_non_nullable
              as bool,
      hideAge: hideAge == freezed
          ? _value.hideAge
          : hideAge // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userId,
      String email,
      String userName,
      String? fullName,
      int? age,
      String? pictureUrl,
      bool hideEmail,
      bool hideFullName,
      bool hideAge});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? userName = freezed,
    Object? fullName = freezed,
    Object? age = freezed,
    Object? pictureUrl = freezed,
    Object? hideEmail = freezed,
    Object? hideFullName = freezed,
    Object? hideAge = freezed,
  }) {
    return _then(_User(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      pictureUrl: pictureUrl == freezed
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hideEmail: hideEmail == freezed
          ? _value.hideEmail
          : hideEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      hideFullName: hideFullName == freezed
          ? _value.hideFullName
          : hideFullName // ignore: cast_nullable_to_non_nullable
              as bool,
      hideAge: hideAge == freezed
          ? _value.hideAge
          : hideAge // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  const _$_User(
      {required this.userId,
      required this.email,
      required this.userName,
      this.fullName,
      this.age,
      this.pictureUrl,
      this.hideEmail = false,
      this.hideFullName = false,
      this.hideAge = false})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String? userId;
  @override
  final String email;
  @override // Почта - метод аутентификации - required
  final String userName;
  @override // User name - если юзер захочет скрыть свое имя
  final String? fullName;
  @override
  final int? age;
  @override
  final String? pictureUrl;
  @JsonKey()
  @override
  final bool hideEmail;
  @JsonKey()
  @override
  final bool hideFullName;
  @JsonKey()
  @override
  final bool hideAge;

  @override
  String toString() {
    return 'User(userId: $userId, email: $email, userName: $userName, fullName: $fullName, age: $age, pictureUrl: $pictureUrl, hideEmail: $hideEmail, hideFullName: $hideFullName, hideAge: $hideAge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality()
                .equals(other.pictureUrl, pictureUrl) &&
            const DeepCollectionEquality().equals(other.hideEmail, hideEmail) &&
            const DeepCollectionEquality()
                .equals(other.hideFullName, hideFullName) &&
            const DeepCollectionEquality().equals(other.hideAge, hideAge));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(pictureUrl),
      const DeepCollectionEquality().hash(hideEmail),
      const DeepCollectionEquality().hash(hideFullName),
      const DeepCollectionEquality().hash(hideAge));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User extends User {
  const factory _User(
      {required String? userId,
      required String email,
      required String userName,
      String? fullName,
      int? age,
      String? pictureUrl,
      bool hideEmail,
      bool hideFullName,
      bool hideAge}) = _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get userId;
  @override
  String get email;
  @override // Почта - метод аутентификации - required
  String get userName;
  @override // User name - если юзер захочет скрыть свое имя
  String? get fullName;
  @override
  int? get age;
  @override
  String? get pictureUrl;
  @override
  bool get hideEmail;
  @override
  bool get hideFullName;
  @override
  bool get hideAge;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
