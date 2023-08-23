import 'package:book_app/Features/home/presentation/view_model/CubitFeaturedBooks/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'customListView.dart';


class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    var MediaHight = MediaQuery
        .of(context)
        .size
        .height;
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(

      builder: (context, state) {
         if(state is FeaturedBooksSuccess){
          return SizedBox(
             height: MediaHight * 0.3,
             child: ListView.builder(
               physics: BouncingScrollPhysics(),
               itemCount:state.books.length ,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context, index) {
                   String imageUrl = state.books[index].volumeInfo.imageLinks?.thumbnail ?? '';
                   return CustomListViewItem(imagrUrl: imageUrl,);
                   // return  CustomListViewItem(imagrUrl: state.books[index].volumeInfo.imageLinks,);
                 }),
           );
         }
         else if (state is FeaturedBooksLoading) {
           return Center(child: CircularProgressIndicator()); // Show loading indicator
         } else if (state is FeaturedBooksFailure) {
           return Center(child: Text('Error loading books')); // Show an error message
         } else {
           return Text('Unknown state'); // Handle any other states you might have
         }

      },
    );
  }
}


