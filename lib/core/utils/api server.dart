import 'package:dio/dio.dart';

class ApiServer {
  final _baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio dio;
  ApiServer(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get("$_baseUrl$endPoint");
    return response.data;
  }
}
