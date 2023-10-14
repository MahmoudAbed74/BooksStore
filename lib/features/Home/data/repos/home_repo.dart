import 'package:booklystore_app/core/errors/failure.dart';
import 'package:booklystore_app/features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class Homerepo {
  Future<Either<Failure, List<BookModel>>> ftechNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
