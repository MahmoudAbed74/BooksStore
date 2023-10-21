import 'package:bloc/bloc.dart';
import 'package:booklystore_app/features/Home/data/models/book_model/book_model.dart';
import 'package:booklystore_app/features/Home/data/repos/home_repo.dart';
import 'package:booklystore_app/features/Home/data/views/widgets/List%20view%20Builder%20Newsetbooks.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homerepo) : super(FeaturedBooksInitial());
  final Homerepo homerepo;

  Future<void> fetchFeaturedBooks() async {
    print("object");
    emit(FeaturedBooksLoading());
    print("object2");
    var result = await homerepo.fetchFeaturedBooks();
    print("object3");
    result.fold((Failure) {
      print("object4");
      emit(FeaturedBooksFaliare(Failure.errMessage));
    }, (books) {
      print("object5");
      emit(FeaturedBooksSuccess(books));
    });
  }
}
