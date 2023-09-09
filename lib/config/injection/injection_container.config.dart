// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../core/api/api_service.dart' as _i4;
import '../../features/home/data/datasources/home_data_sources.dart' as _i5;
import '../../features/home/data/datasources/home_remote_dto.dart' as _i6;
import '../../features/home/data/repositories/home_data_repo.dart' as _i8;
import '../../features/home/domain/repositories/home_domain_repo.dart' as _i7;
import '../../features/login/data/datasources/login_data_sources.dart' as _i9;
import '../../features/login/data/datasources/login_remote_data_source.dart'
    as _i10;
import '../../features/login/data/repositories/login_data_repo.dart' as _i12;
import '../../features/login/domain/repositories/login_domain_repo.dart'
    as _i11;
import '../../features/login/domain/usecases/login_use_case.dart' as _i13;
import 'injection_container.dart' as _i14;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i4.ApiService>(() => _i4.ApiService(gh<_i3.Dio>()));
    gh.lazySingleton<_i5.HomeDataSources>(
        () => _i6.HomeRemoteDto(apiService: gh<_i4.ApiService>()));
    gh.lazySingleton<_i7.HomeDomainRepo>(
        () => _i8.HomeDataRepo(homeDataSources: gh<_i5.HomeDataSources>()));
    gh.lazySingleton<_i9.LoginDataSources>(
        () => _i10.LoginRemoteDataSources(apiService: gh<_i4.ApiService>()));
    gh.lazySingleton<_i11.LoginDomainRepo>(
        () => _i12.LoginDataRepo(gh<_i9.LoginDataSources>()));
    gh.lazySingleton<_i13.LoginUseCase>(
        () => _i13.LoginUseCase(gh<_i11.LoginDomainRepo>()));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
