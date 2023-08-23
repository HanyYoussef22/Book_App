import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/data/Repo/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/model/book_model/book_model.dart';



part 'news_book_state.dart';

class NewsBookCubit extends Cubit<NewsBookState> {
  NewsBookCubit(this.homeRepo) : super(NewsBookInitial());
final HomeRepo homeRepo;

  List<ModelBook>books =[];
  Future<void> getFeatureBooks() async {
    emit(FeaturedBooksLoading());
    final result = await homeRepo.featchBestSellerBooks();
    result.fold(
          (failure) {
        NewsBookFailure(failure.errMsg);
      },
          (books) {
        this.books=books;
        emit(NewsBookSuccess(books));
      },
    );
  }
}
