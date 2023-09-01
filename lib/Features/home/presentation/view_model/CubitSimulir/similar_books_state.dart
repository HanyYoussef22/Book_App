part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {
}
class SimilarBooksFailure extends SimilarBooksState {
  final String errMAssage;

  SimilarBooksFailure(this.errMAssage);
}
class SimilarBooksSuccess extends SimilarBooksState {
  final List<ModelBook> books;

  SimilarBooksSuccess(this.books);
}