import 'package:book_app/Features/home/data/model/Book_model.dart';
import 'package:book_app/Features/search/presentation/view/widgets/textFildSearch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:book_app/Features/home/data/model/book_model/book_model.dart';
import 'package:book_app/Features/home/presentation/view/widgets/widgetsHomeView/ItemBestSeller.dart';
import 'package:book_app/Features/home/presentation/view/loading/loading.dart';
import 'package:book_app/Features/home/presentation/view_model/CubitFeaturedBooks/featured_books_cubit.dart';

import '../../../../home/presentation/view/widgets/widgetsHomeView/customListView.dart';

class SearchBarBody extends StatefulWidget {
  const SearchBarBody({Key? key}) : super(key: key);

  @override
  State<SearchBarBody> createState() => _SearchBarBodyState();
}

class _SearchBarBodyState extends State<SearchBarBody> {
  late FeaturedBooksCubit _featuredBooksCubit;

  // List to display search results
  List<ModelBook> displayList = [];
  List<ModelBook> mainList = [];


  // Method to update the displayList based on search query
  void updateList(String query) {
    setState(() {
      _featuredBooksCubit = BlocProvider.of<FeaturedBooksCubit>(context);
      _featuredBooksCubit.getFeatureBooks(category: 'Computer science');
      mainList.addAll(_featuredBooksCubit.books);
      _featuredBooksCubit.getFeatureBooks(category: 'Medical');
      mainList.addAll(_featuredBooksCubit.books);
      _featuredBooksCubit.getFeatureBooks(category: 'earth');
      mainList.addAll(_featuredBooksCubit.books);
      _featuredBooksCubit.getFeatureBooks(category: 'science');
      mainList.addAll(_featuredBooksCubit.books);
      _featuredBooksCubit.getFeatureBooks(category: 'Football');
      mainList.addAll(_featuredBooksCubit.books);

      displayList = mainList
          .where((book) =>
              book.volumeInfo.title!
                  .toLowerCase()
                  .contains(query.toLowerCase()) )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldSearchBar(onChanged: updateList),

    Expanded(
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
              builder: (context, state) {
                if (state is FeaturedBooksSuccess) {
                  return displayList.isEmpty
                      ? Center(
                    child: Text('No matching books found.'),
                  )
                      :ListView.builder(
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: displayList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: ItemBustSeller(books: displayList[index]),
                      );
                    },
                  );
                }
                else if (state is FeaturedBooksFailure) {
                  return Center(child: Text(state.errMAssage));
                }
                else{
                  return const Center(child: NewsCardSkelton());
                }
              },
            ),

        ),
      ],
    );
  }
}
