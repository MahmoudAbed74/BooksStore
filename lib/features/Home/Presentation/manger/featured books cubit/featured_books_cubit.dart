import 'package:bloc/bloc.dart';
import 'package:booklystore_app/features/Home/data/models/book_model/book_model.dart';
import 'package:booklystore_app/features/Home/data/repos/home_repo.dart';
import 'package:booklystore_app/features/Home/data/views/widgets/List%20view%20Builder%20books.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homerepo) : super(FeaturedBooksInitial());
  final Homerepo homerepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homerepo.fetchFeaturedBooks();
    result.fold((Failure) {
      emit(FeaturedBooksFaliare(Failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
