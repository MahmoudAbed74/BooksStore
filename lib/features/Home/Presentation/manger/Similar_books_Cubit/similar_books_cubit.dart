import 'package:bloc/bloc.dart';
import 'package:booklystore_app/features/Home/data/models/book_model/book_model.dart';
import 'package:booklystore_app/features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homerepo) : super(SimilarBooksInitial());
  final Homerepo homerepo;

  Future<void> fetchSimilardBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homerepo.fetchSimilardBooks(category: category);
    result.fold((faliure) {
      emit(SimilarBooksFaliure(faliure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
