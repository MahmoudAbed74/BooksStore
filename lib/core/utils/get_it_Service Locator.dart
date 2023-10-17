import 'package:booklystore_app/core/utils/api%20server.dart';
import 'package:booklystore_app/features/Home/data/repos/home_repoImp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLoctaor() {
  getIt.registerSingleton<Home_repoImp>(Home_repoImp(ApiServer(Dio())));
}
