import 'package:booklystore_app/core/errors/failure.dart';
import 'package:booklystore_app/core/utils/api%20server.dart';
import 'package:booklystore_app/features/Home/data/models/book_model/book_model.dart';
import 'package:booklystore_app/features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Home_repoImp implements Homerepo {
  final ApiServer apiServer;

  Home_repoImp(this.apiServer);
//*fetechNewsetBooks
  @override
  Future<Either<Failure, List<BookModel>>> fetechNewsetBooks() async {
    try {
      var data = await apiServer.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest&q=subject: programming");
      List<BookModel> books = List.empty();
      print("object");
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(SeverFailure.fromDioError(e));
      }

      return left(SeverFailure(e.toString()));
    }
  }

//*fetchFeaturedBooks
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServer.get(
          endPoint: "volumes?Filtering=free-ebooks&q=subject: programming");
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      print("Done");
      return right(books);
    } catch (e) {
      if (e is DioException) {
        print("sss");
        return left(SeverFailure.fromDioError(e));
      }
      print("dd");
      return left(SeverFailure(e.toString()));
    }
  }
}
