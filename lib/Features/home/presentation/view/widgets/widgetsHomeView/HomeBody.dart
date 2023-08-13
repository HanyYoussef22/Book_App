import 'package:book_app/core/utils/appRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/styles.dart';
import 'ItemBestSeller.dart';
import 'customAppBar.dart';
import 'featherListView.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
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
                "Best Seller",
                style: Styles.titleStyle18,
              ),
            ),
            SizedBox(
              height: 20,
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
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetiles);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: ListView.builder(
          // shrinkWrap: true,//rebiled widget
          physics: const NeverScrollableScrollPhysics(),
          padding:EdgeInsets.zero ,
            itemCount: 10,
            itemBuilder: (context,index)
        {
          return const Padding(
            padding: EdgeInsets.only(top: 20),
            child: ItemBustSeller(),
          );
        }),
      ),
    );
  }
}
