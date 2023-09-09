import 'package:injectable/injectable.dart';

import '../../../../core/api/api_service.dart';
import '../../../../core/api/end_points.dart';
import '../models/login_model/login_model.dart';
import 'login_data_sources.dart';

@LazySingleton(as: LoginDataSources)
class LoginRemoteDataSources implements LoginDataSources {
  final ApiService apiService;
  LoginRemoteDataSources({
    required this.apiService,
  });

  @override
  Future<LoginModel> login(Map<String, String> param) {
    // TODO: implement login
    throw UnimplementedError();
  }


}
