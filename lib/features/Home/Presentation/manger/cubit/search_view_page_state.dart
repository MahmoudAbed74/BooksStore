part of 'search_view_page_cubit.dart';

sealed class SearchViewPageState extends Equatable {
  const SearchViewPageState();

  @override
  List<Object> get props => [];
}

final class SearchViewPageInitial extends SearchViewPageState {}

final class SearchViewPageLoading extends SearchViewPageState {}

final class SearchViewPageSuccess extends SearchViewPageState {
  final List<BookModel> book;

  const SearchViewPageSuccess(this.book);
}

final class SearchViewPageFaliure extends SearchViewPageState {
  final String errMessage;

  const SearchViewPageFaliure(this.errMessage);
}
