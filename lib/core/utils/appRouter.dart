import 'package:go_router/go_router.dart';

import '../../Features/Splash/presentation/view/SplashView.dart';
import '../../Features/home/presentation/view/HomeView.dart';
import '../../Features/home/presentation/view/bookDetils.dart';

abstract class AppRouter
{
  static const kSplaseScreen='/';
  static const kHomeScreen='/homeView';
  static const kBookDetiles='/BookDetiles';

static final router = GoRouter(
    routes: [
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
