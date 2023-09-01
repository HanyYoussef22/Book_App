import 'package:book_app/Features/home/presentation/view_model/CubitNewsBooks/news_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/appRouter.dart';
import '../../loading/loading.dart';
import 'ItemBestSeller.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: BlocBuilder<NewsBookCubit, NewsBookState>(
        builder: (context, state) {
          if (state is NewsBookSuccess) {
            return ListView.builder(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ItemBustSeller(books: state.books[index]),
                );
              },
            );
          }
          else if (state is NewsBookFailure) {
            return Center(child: Text(state.errMAssage));
          }
          else{
            return const Center(child: NewsCardSkelton());
          }
        },
      ),

    );
  }
}
