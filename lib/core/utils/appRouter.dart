import 'package:book_app/Features/home/data/Repo/home_repo_imp.dart';
import 'package:book_app/Features/home/data/model/book_model/book_model.dart';
import 'package:book_app/Features/home/presentation/view/category/category_screen.dart';
import 'package:book_app/core/locator_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/view/SplashView.dart';
import '../../Features/home/presentation/view/HomeView.dart';
import '../../Features/home/presentation/view/WebView/WebView.dart';
import '../../Features/home/presentation/view/bookDetils.dart';
import '../../Features/home/presentation/view_model/CubitSimulir/similar_books_cubit.dart';
import '../../Features/search/presentation/view/search_view.dart';

abstract class AppRouter {
  static const kSplaseScreen = '/';
  static const kHomeScreen = '/homeView';
  static const kBookDetiles = '/BookDetiles';
  static const kSearchView = '/SearchView';
  static const kWebViewScreen = '/WebViewScreen';
  static const kCategory = '/kCategory';


  static final router = GoRouter(
    routes: [

      GoRoute(
        path: kWebViewScreen,
        builder: (context, state) => WebViewScreen(books: state.extra as ModelBook,
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => SearchView(),
      ),
      GoRoute(
        path: kCategory,
        builder: (context, state) => CategoryScreen(),
      ),
      GoRoute(
        path: kSplaseScreen,
        builder: (context, state) => SplahView(),
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kBookDetiles,
        builder: (context, state) =>
            BookBody( books: state.extra as ModelBook,),

      ),
    ],
  );

}
