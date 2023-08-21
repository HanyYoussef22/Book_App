import 'package:book_app/Features/home/data/model/ModelBook.dart';

import 'package:book_app/core/errors/failures.dart';
import 'package:book_app/core/utils/api_service.dart';

import 'package:dartz/dartz.dart';

import 'home_repo.dart';

class HomeRepoImplement implements HomeRepo{
   final ApiServise apiServise;

  HomeRepoImplement(this.apiServise);
  @override
  Future<Either<Failure, List<ModelBook>>> featchBestSellerBooks()async {
    try
    {
      var response = await apiServise.get(endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &subject=&q=subject:general');
      // return response.map((e)=>ModelBook.fromJson(e)).toList();
      List<ModelBook> books=[];
      for(var item in response['items']){
        books.add(ModelBook.fromJson(item));
      }
      return right(books);
    }
    on Exception catch (e){

      return left(ServerFailure());
    }



  }

  @override
  Future<Either<Failure, List<ModelBook>>> featchFeatureBooks() {
    // TODO: implement featchFeatureBooks
    throw UnimplementedError();
  }

}