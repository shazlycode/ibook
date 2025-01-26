import 'package:dio/dio.dart';

import 'constants/constants.dart';

class ApiService {
  Future<Map<String, dynamic>> fetchBooks({required String endpoint}) async {
    try {
      final response = await Dio().get("$baseUrl$endpoint");
      return response.data;
    } on Exception catch (e) {
      rethrow;
    }
  }
}
