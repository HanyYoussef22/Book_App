import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/data/model/book_model/book_model.dart';
import 'package:meta/meta.dart';

import '../../../data/Repo/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {

  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
   List<ModelBook>books =[];
 Future<void> getFeatureBooks({required String category}) async {
   emit(FeaturedBooksLoading());
    final result = await homeRepo.featchFeatureBooks(category: category);
    result.fold(
          (failure) {
            FeaturedBooksFailure(failure.errorMessage);
          },
          (books) {
            this.books=books;
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
