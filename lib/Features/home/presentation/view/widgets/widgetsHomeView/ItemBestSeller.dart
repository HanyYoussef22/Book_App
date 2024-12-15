
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/appRouter.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../data/model/book_model/book_model.dart';
import '../../../view_model/CubitSimulir/similar_books_cubit.dart';
import '../secationRate.dart';
import 'customListView.dart';



class ItemBustSeller extends StatelessWidget {
  ItemBustSeller({Key? key, required this.books}) : super(key: key);
  final ModelBook books;

  @override
  Widget build(BuildContext context) {
    var MediaHight = MediaQuery.of(context).size.height;
    var MediaWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetiles, extra: books);
        BlocProvider.of<SimilarBooksCubit>(context).getSimilarBooks(category:books.volumeInfo.categories![0]);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            CustomListViewImage(
              imagrUrl: books.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaWidth * .5,
                    child: Text(
                      '${books.volumeInfo!.title ?? " "}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.titleStyle20.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    '${books.volumeInfo!.authors![0] ?? ""}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.titleStyle14,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Free',
                          style: Styles.titleStyle20,
                        ),
                        RateWidgets(
                          rate: books,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

