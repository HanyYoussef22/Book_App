import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.formDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection time out from APIService');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send time out from APIService');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive time out from APIService');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        if(dioError.message!.contains('SocketException'))
        {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexpected Error, try again');

      default:
        return ServerFailure('Oops there was an Error, Pls try again later');
    }

  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response)
  {
    if(statusCode == 400 || statusCode == 401 || statusCode == 403)
    {
      return ServerFailure(response['error']['message']);
    }
    else if(statusCode == 404)
    {
      return ServerFailure('Your request not found, Pls try again later');
    }
    else if(statusCode == 500)
    {
      return ServerFailure('Internal server error, Pls try again later');
    }
    else
    {
      return ServerFailure('Oops there was an Error, Pls try again later');
    }
  }
}