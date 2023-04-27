import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';

  final Dio _dio;

  const ApiService(this._dio);

  Future<Map<String, dynamic>> getData(
      {required String endPoint, Map<String, dynamic>? queries}) async {
    var response = await _dio.get(
      "$_baseUrl$endPoint",
      queryParameters: queries,
    );
    return response.data;
  }
}
