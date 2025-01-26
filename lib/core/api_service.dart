import 'package:dio/dio.dart';

import 'constants/constants.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});
  Future<Map<String, dynamic>> fetchBooks({required String endpoint}) async {
    try {
      final response = await dio.get("$baseUrl$endpoint");
      return response.data;
    } on Exception catch (e) {
      rethrow;
    }
  }
}
