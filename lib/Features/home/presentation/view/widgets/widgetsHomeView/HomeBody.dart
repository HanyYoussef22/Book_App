import 'package:book_app/core/utils/appRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/styles.dart';
import 'ItemBestSeller.dart';
import 'bestSellerListView.dart';
import 'customAppBar.dart';
import 'featherListView.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            CustomAppBar(),
            FeaturedBooksListView(),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding:EdgeInsets.only(left: 15.0),
              child: Text(
                "News Books",
                style: Styles.titleStyle18,
              ),
            ),
            SizedBox(
              height: 10,
            ),

          ]
    ),
        ),SliverFillRemaining(
          child:  BestSellerListView(),
        )

    ],
    );
  }
}
