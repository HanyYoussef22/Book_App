import 'package:book_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../Features/home/data/Repo/home_repo_imp.dart';

final getIt = GetIt.instance;

void  SetupServiceLocator() {
  getIt.registerSingleton<ApiServise>(ApiServise(Dio()));

  getIt.registerSingleton<HomeRepoImplement>(HomeRepoImplement(getIt.get<ApiServise>()));

// Alternatively you could write it if you don't like global variables

}