import 'package:book_app/Features/home/data/model/ModelBook.dart';

import 'package:book_app/core/errors/failures.dart';

import 'package:dartz/dartz.dart';

import 'home_repo.dart';

class HomeRepoImplement implements HomeRepo{
  @override
  Future<Either<Failure, List<ModelBook>>> featchBestSellerBooks() {
    // TODO: implement featchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ModelBook>>> featchFeatureBooks() {
    // TODO: implement featchFeatureBooks
    throw UnimplementedError();
  }

}