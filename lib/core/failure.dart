import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class SeverFailure extends Failure {
  SeverFailure({required super.errorMessage});
  factory SeverFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return SeverFailure(errorMessage: "Connection time out, Try again");
      case DioExceptionType.sendTimeout:
        return SeverFailure(errorMessage: "Sending time out, Try again");

      case DioExceptionType.receiveTimeout:
        return SeverFailure(errorMessage: "Receving time out, Try again");

      case DioExceptionType.badCertificate:
        return SeverFailure(errorMessage: "Server error, Try again");

      case DioExceptionType.badResponse:
        return SeverFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response);
      case DioExceptionType.cancel:
        return SeverFailure(errorMessage: "Canceled Request, Try again");

      case DioExceptionType.connectionError:
        return SeverFailure(errorMessage: "connection Error, Try again");

      case DioExceptionType.unknown:
        return SeverFailure(errorMessage: "connection time out, Try again");
    }
  }

  factory SeverFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return SeverFailure(errorMessage: response["error"]["message"]);
    } else if (statusCode == 404) {
      return SeverFailure(errorMessage: "Method not found");
    } else if (statusCode == 405) {
      return SeverFailure(errorMessage: "unkonown error, try agane later!!!");
    } else {
      return SeverFailure(errorMessage: "Opps, unknown Error");
    }
  }
}
