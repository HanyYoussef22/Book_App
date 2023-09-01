import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/Repo/home_repo.dart';
import '../../../data/model/book_model/book_model.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;

  List<ModelBook>books =[];
  Future<void> getSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    final result = await homeRepo.featchSimilarBooks(category: category);
    result.fold(
          (failure) {
            SimilarBooksFailure(failure.errorMessage);
      },
          (books) {
        this.books=books;
        emit(SimilarBooksSuccess(books));
      },
    );
  }
}
