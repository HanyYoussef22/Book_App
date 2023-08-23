part of 'news_book_cubit.dart';

@immutable
abstract class NewsBookState {}

class NewsBookInitial extends NewsBookState {}
class FeaturedBooksLoading extends NewsBookState {
}
class NewsBookFailure extends NewsBookState {
  final String errMAssage;

  NewsBookFailure(this.errMAssage);
}
class NewsBookSuccess extends NewsBookState {
  final List<ModelBook> books;

  NewsBookSuccess(this.books);
}