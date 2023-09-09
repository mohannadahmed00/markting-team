import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/login_entity.dart';

abstract class LoginDomainRepo {
  Future<Either<Failures, LoginEntity>> login(Map<String, String> param);
}
