import 'package:booklystore_app/core/errors/failure.dart';
import 'package:booklystore_app/features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class Homerepo {
  Future<Either<Failure, List<BookModel>>> fetechNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilardBooks(
      {required String category});
  Future<Either<Failure, List<BookModel>>> fetchSearchViewPage(
      {required String searchword});
}
