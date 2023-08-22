import 'package:book_app/Features/home/data/model/ModelBook.dart';

import 'package:book_app/core/errors/failures.dart';
import 'package:book_app/core/utils/api_service.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'home_repo.dart';

class HomeRepoImplement implements HomeRepo{
   final ApiServise apiServise;
   final endPoint = 'volumes?Filtering=free-ebooks&Sorting=newest &subject=&q=subject:general';
   final endPoint2 ='volumes?Filtering=free-ebooks&subject=&q=subject: programing';

  HomeRepoImplement(this.apiServise);
  @override
  Future<Either<Failure, List<ModelBook>>> featchBestSellerBooks()async {
    try
    {
      var response = await apiServise.get(endPoint: endPoint);
      // return response.map((e)=>ModelBook.fromJson(e)).toList();
      List<ModelBook> books=[];
       books = response['items'].map((item) => ModelBook.fromJson(item)).toList();
      // for(var item in response['items']){
      //   books.add(ModelBook.fromJson(item));
      // }
      return right(books);
    }
    on Exception catch (e){
      if(e is DioError)
      {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }



  }

  @override
  Future<Either<Failure, List<ModelBook>>> featchFeatureBooks() async{
    try
    {
      var response = await apiServise.get(endPoint: endPoint2);
      // return response.map((e)=>ModelBook.fromJson(e)).toList();

      List<ModelBook> books=[];
      books = response['items'].map((item) => ModelBook.fromJson(item)).toList();

      return right(books);
    }
    on Exception catch (e){
      if(e is DioError)
      {
        return left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

}