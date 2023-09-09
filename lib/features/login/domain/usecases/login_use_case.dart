import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/param_use_case.dart';
import '../entities/login_entity.dart';
import '../repositories/login_domain_repo.dart';

@lazySingleton
class LoginUseCase implements UseCase<LoginEntity, Map<String, String>> {
  LoginDomainRepo loginDomainRepo;

  LoginUseCase(this.loginDomainRepo);

  @override
  Future<Either<Failures, LoginEntity>> call(Map<String, String> param) =>
      loginDomainRepo.login(param);
}
