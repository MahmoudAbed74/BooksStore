import 'package:bloc/bloc.dart';
import 'package:booklystore_app/features/Home/data/models/book_model/book_model.dart';
import 'package:booklystore_app/features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homerepo) : super(NewsetBooksInitial());
  final Homerepo homerepo;

  Future<void> fetchNewsetBooks() async {
    print("object");
    emit(NewsetBooksLoading());
    print("object2");
    var result = await homerepo.fetechNewsetBooks();
    print("object3");
    result.fold((faliure) {
      emit(NewsetBooksFaliure(faliure.errMessage));
    }, (books) {
      print("object4");
      emit(NewsetBooksSuccess(books));
    });
  }
}
