import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/Repo/home_repo.dart';
import '../../../data/model/ModelBook.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {

  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
   List<ModelBook>books =[];
 Future<void> getFeatureBooks() async {
   FeaturedBooksLoading();
    final result = await homeRepo.featchFeatureBooks();
    result.fold(
          (failure) {
            FeaturedBooksFailure(failure.errMsg);
          },
          (books) {
            this.books=books;
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
