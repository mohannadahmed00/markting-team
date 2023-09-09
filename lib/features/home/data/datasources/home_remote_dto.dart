import 'package:injectable/injectable.dart';

import '../../../../core/api/api_service.dart';
import 'home_data_sources.dart';

@LazySingleton(as: HomeDataSources)
class HomeRemoteDto implements HomeDataSources {
  final ApiService apiService;
  HomeRemoteDto({
    required this.apiService,
  });



}