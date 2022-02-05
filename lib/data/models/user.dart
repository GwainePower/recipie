import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._(); // Приватный конструктор (нюанс freezed)
  const factory User({
    required String? userId,
    required String email, // Почта - метод аутентификации - required
    required String userName, // User name - если юзер захочет скрыть свое имя
    String? fullName,
    int? age,
    String? pictureUrl,
    @Default(false) bool hideEmail,
    @Default(false) bool hideFullName,
    @Default(false) bool hideAge,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
