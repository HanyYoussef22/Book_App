
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../model/ModelBook.dart';

abstract class HomeRepo
{
  Future<Either<Failure,List<ModelBook>>> featchBestSellerBooks();
  Future<Either<Failure,List<ModelBook>>> featchFeatureBooks();

}