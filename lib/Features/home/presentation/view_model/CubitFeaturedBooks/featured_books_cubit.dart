import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/model/ModelBook.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());

}
