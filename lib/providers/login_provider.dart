import 'package:flutter/material.dart';
import 'package:shoping_app/models/sign_up_model.dart';
import 'package:shoping_app/services/auth_service.dart';

class LoginProvider extends ChangeNotifier {
  var email = TextEditingController();
  var password = TextEditingController();
  LoginModel? user;

  Future<void> checkLogin() async {
    user = await AuthService()
        .signIn(LoginModel(email: email.text, password: password.text));
  }
}
