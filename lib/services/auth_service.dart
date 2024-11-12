import 'package:dio/dio.dart';
import 'package:shoping_app/models/sign_up_model.dart';

class AuthService {
  var dio = Dio();

  Future<SignUpModel?> signUp(SignUpModel model) async {
    var response = await dio.post('https://student.valuxapps.com/api/register',
        data: SignUpModel.convertToJson(model));
    if (response.data['status']) {
      return SignUpModel(
          name: response.data['data']['name'],
          email: response.data['data']['email'],
          password: response.data['data']['password'],
          phone: response.data['data']['phone']);
    } else {
      return null;
    }
  }

  Future<LoginModel?> signIn(LoginModel model) async {
    var response = await dio.post('https://student.valuxapps.com/api/login',
        data: LoginModel.convertToJson(model));
    if (response.data['status']) {
      return LoginModel(
          email: response.data['data']['email'],
          password: response.data['data']['password']);
    } else {
      return null;
    }
  }
}
