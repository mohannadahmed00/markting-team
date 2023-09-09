import '../models/login_model/login_model.dart';

abstract class LoginDataSources {
  Future<LoginModel> login(Map<String, String> param);
}
