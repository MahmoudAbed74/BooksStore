import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class SeverFailure extends Failure {
  SeverFailure(super.errMessage);

  factory SeverFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return SeverFailure('connection timeout');
      case DioExceptionType.sendTimeout:
        return SeverFailure('send timeout');
      case DioExceptionType.receiveTimeout:
        return SeverFailure('receive timeout');
      case DioExceptionType.badCertificate:
        return SeverFailure('bad certificate');
      case DioExceptionType.badResponse:
        return SeverFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return SeverFailure('request cancelled');
      case DioExceptionType.connectionError:
        return SeverFailure('connection error');
      case DioExceptionType.unknown:
        return SeverFailure('unknown error , try again!');

      default:
        return SeverFailure("Opps there an error ,Please try later!");
    }
  }
  factory SeverFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return SeverFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return SeverFailure("Your request Not Found , Please try later!");
    } else if (statusCode == 500) {
      return SeverFailure("The connection error , please turn on connection");
    } else {
      return SeverFailure("Opps there an error ,Please try later!");
    }
  }
}
