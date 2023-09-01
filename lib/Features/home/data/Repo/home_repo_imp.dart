
import 'package:book_app/core/errors/failures.dart';
import 'package:book_app/core/utils/api_service.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../model/book_model/book_model.dart';
import 'home_repo.dart';

class HomeRepoImplement implements HomeRepo{
   final ApiServise apiServise;
   final endPoint = 'volumes?Filtering=free-ebooks&Sorting=newest &subject=&q=subject:general';
   final endPoint2 ='volumes?Filtering=free-ebooks&subject=&q=subject: Computer Science';
   final endPoint3 ='volumes?Filtering=free-ebooks&subject=&q=subject: Computer Science';


   HomeRepoImplement(this.apiServise);
  @override
  Future<Either<Failure, List<ModelBook>>> featchBestSellerBooks( {required String category})async {
    try
    {
      var response = await apiServise.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &subject=&q=subject:$category');

      List<ModelBook> books=[];
      // books = response['items'].map((item) => ModelBook.fromJson(item)).toList();
      for(var item in response['items']){
        try{
          books.add(ModelBook.fromJson(item));
        }catch (e){

        }
      }
      // print (books.toString());
      return right(books);
    }
    on Exception catch (e){
      if(e is DioException)
      {
        return left(ServerFailure.formDioException(e));
      }

      return left(ServerFailure(e.toString()));
    }



  }

  @override
  Future<Either<Failure, List<ModelBook>>> featchFeatureBooks( {required String category}) async{
    try
    {
      var response = await apiServise.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &subject=&q=subject:$category');      // return response.map((e)=>ModelBook.fromJson(e)).toList();

      List<ModelBook> books=[];
      // books = response['items'].map((item) => ModelBook.fromJson(item)).toList();
      for(var item in response['items']){
        books.add(ModelBook.fromJson(item));
      }
      return right(books);
    }
     catch (e){
       // left(ServerFailure(e.toString()));
      if(e is DioException)
      {
        return left(ServerFailure.formDioException(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ModelBook>>> featchSimilarBooks(
      {required String category}) async {
    try
    {
      var response = await apiServise.get(endPoint: endPoint3);
      // return response.map((e)=>ModelBook.fromJson(e)).toList();

      List<ModelBook> books=[];
      // books = response['items'].map((item) => ModelBook.fromJson(item)).toList();
      for(var item in response['items']){
        books.add(ModelBook.fromJson(item));
      }
      return right(books);
    }
    catch (e){
      // left(ServerFailure(e.toString()));
      if(e is DioException)
      {
        return left(ServerFailure.formDioException(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

}