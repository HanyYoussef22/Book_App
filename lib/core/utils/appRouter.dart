import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/view/SplashView.dart';
import '../../Features/home/presentation/view/HomeView.dart';
import '../../Features/home/presentation/view/bookDetils.dart';
import '../../Features/search/presentation/view/search_view.dart';

abstract class AppRouter
{
  static const kSplaseScreen='/';
  static const kHomeScreen='/homeView';
  static const kBookDetiles='/BookDetiles';
  static const kSearchView='/SearchView';


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSearchView,
        builder: (context, state) => SearchView(),
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
        builder: (context, state) => BookDetilesBody(),
      ),
    ],
  );

}
