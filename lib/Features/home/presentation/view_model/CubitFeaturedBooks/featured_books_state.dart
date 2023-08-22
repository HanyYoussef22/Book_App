part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {

}
class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMAssage;

   FeaturedBooksFailure(this.errMAssage);
}
class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<ModelBook> books;

  FeaturedBooksSuccess(this.books);
}