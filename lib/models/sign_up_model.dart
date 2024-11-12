class SignUpModel {
  SignUpModel(
      {required this.name,
      required this.email,
      required this.password,
      required this.phone});

  String name;
  String phone;
  String email;
  String? password;

  static Map<String, dynamic> convertToJson(SignUpModel model) {
    return <String, dynamic>{
      "name": model.name,
      "phone": model.phone,
      "email": model.email,
      "password": model.password
    };
  }
}

class LoginModel {
  LoginModel({
    required this.email,
    required this.password,
  });

  String email;
  String? password;

  static Map<String, dynamic> convertToJson(LoginModel model) {
    return <String, dynamic>{"email": model.email, "password": model.password};
  }
}
