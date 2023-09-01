import 'package:book_app/Features/home/presentation/view_model/CubitFeaturedBooks/featured_books_cubit.dart';
import 'package:book_app/Features/home/presentation/view_model/CubitNewsBooks/news_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:provider/provider.dart';

import '../../../../../core/utils/appRouter.dart';
import 'category_widget.dart';
import 'model.dart';


class CategoryScreen extends StatelessWidget {

  var categoryes=CategoryModel.getCategoryes();


  CategoryScreen();

@override
  Widget build(BuildContext context) {
  var hight= MediaQuery.of(context).size.height;
    return Scaffold(
      body:  Container(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: hight*0.09),
            Text('Pick your category of interest',
              style: TextStyle(fontSize: 33,color: Colors.white),),
            SizedBox(
              height: hight*0.1,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,

                    ),
                    itemCount: categoryes.length,
                    itemBuilder: (context,index){
                      return InkWell(
                          onTap: (){
                            BlocProvider.of<FeaturedBooksCubit>(context).getFeatureBooks(category: categoryes[index].id);
                            BlocProvider.of<NewsBookCubit>(context).getBestSellerBooks(category: categoryes[index].id);
                            GoRouter.of(context).push(AppRouter.kHomeScreen);
                          },
                          child: CategoryWidget(categoryes[index],index)
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
