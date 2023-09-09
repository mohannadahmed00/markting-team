import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/error/server_failures.dart';
import '../../domain/repositories/login_domain_repo.dart';
import '../datasources/login_data_sources.dart';
import '../models/login_model/login_model.dart';

@LazySingleton(as: LoginDomainRepo)
class LoginDataRepo implements LoginDomainRepo {
  LoginDataSources loginDataSources;

  LoginDataRepo(this.loginDataSources);

  @override
  Future<Either<Failures, LoginModel>> login(Map<String, String> param) {
    // TODO: implement login
    throw UnimplementedError();
  }


}
