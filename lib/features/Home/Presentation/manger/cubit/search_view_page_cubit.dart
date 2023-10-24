import 'package:bloc/bloc.dart';
import 'package:booklystore_app/features/Home/data/models/book_model/book_model.dart';
import 'package:booklystore_app/features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_view_page_state.dart';

class SearchViewPageCubit extends Cubit<SearchViewPageState> {
  SearchViewPageCubit(this.homerepo) : super(SearchViewPageInitial());
  final Homerepo homerepo;

  Future<void> fetchSearchViewPage({required String searchWord}) async {
    emit(SearchViewPageLoading());
    var result = await homerepo.fetchSearchViewPage(searchword: searchWord);
    result.fold((faliure) {
      emit(SearchViewPageFaliure(faliure.errMessage));
    }, (book) {
      emit(SearchViewPageSuccess(book));
    });
  }
}
