import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiService {
  final Dio _dio;

  final _baseUrl = "https://imed.routemisr.com/api/v1";

  ApiService(this._dio);

  Future<Map<String, dynamic>> get(
      {required String endPoint,
        Map<String, dynamic>? headers,
        Map<String, dynamic>? queryParameters}) async {
    var response = await _dio.get('$_baseUrl$endPoint',
        options: Options(headers: headers), queryParameters: queryParameters);
    return response.data;
  }

  Future<Map<String, dynamic>> post(
      {required String endPoint,
        required Map<String, dynamic> data,
        Map<String, dynamic>? headers,
        Map<String, dynamic>? queryParameters}) async {
    var response = await _dio.post('$_baseUrl$endPoint',
        data: data,
        options: Options(headers: headers),
        queryParameters: queryParameters);
    return response.data;
  }
}