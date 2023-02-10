class LoginUser {
  String? firstName;
  String? lastName;
  String? password;
  String? email;

  LoginUser({this.firstName, this.lastName, this.password, this.email});

  factory LoginUser.fromJson(Map<String, dynamic> json) {
    return LoginUser(
      firstName: json["first_name"],
      lastName: json["last_name"],
      password: json["password"],
      email: json["email"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "first_name": firstName,
      "last_name": lastName,
      "password": password,
      "email": email,
    };
  }
}
