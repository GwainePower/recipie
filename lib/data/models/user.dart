class User {
  final String? userId;
  final String email; // Почта - метод аутентификации - required
  final String userName; // User name - если юзер захочет скрыть свое имя
  final String? fullName;
  final int? age;
  final String? pictureUrl;
  bool hideEmail;
  bool hideFullName;
  bool hideAge;

  User({
    this.userId,
    required this.email,
    required this.userName,
    this.fullName,
    this.age,
    this.pictureUrl,
    this.hideEmail = false,
    this.hideFullName = false,
    this.hideAge = false,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.userId == userId &&
        other.email == email &&
        other.userName == userName &&
        other.fullName == fullName &&
        other.age == age &&
        other.pictureUrl == pictureUrl &&
        other.hideEmail == hideEmail &&
        other.hideFullName == hideFullName &&
        other.hideAge == hideAge;
  }

  @override
  int get hashCode {
    return userId.hashCode ^
        email.hashCode ^
        userName.hashCode ^
        fullName.hashCode ^
        age.hashCode ^
        pictureUrl.hashCode ^
        hideEmail.hashCode ^
        hideFullName.hashCode ^
        hideAge.hashCode;
  }
}
