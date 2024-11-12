import 'package:flutter/material.dart';
import 'package:shoping_app/models/sign_up_model.dart';

import '../services/auth_service.dart';

class RegistrationProvider extends ChangeNotifier {
  var name = TextEditingController();
  var phone = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  SignUpModel? user;
  
  Future<void> checkSignUp() async {
    user = await AuthService().signUp(SignUpModel(
        name: name.text,
        email: email.text,
        password: password.text,
        phone: phone.text));
  }
}
