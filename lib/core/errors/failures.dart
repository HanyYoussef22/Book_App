import 'package:dio/dio.dart';

abstract class Failure {
  final String errMsg;

  Failure(this.errMsg);
}

class ServerFailure extends Failure {
  ServerFailure(String errMsg) : super(errMsg);

  factory ServerFailure.fromDioError(DioError dioError) {
    String errorMsg = "An error occurred";

    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        errorMsg = "Connection timeout";
        break;
      case DioErrorType.sendTimeout:
        errorMsg = "Send request timeout";
        break;
      case DioErrorType.receiveTimeout:
        errorMsg = "Receive response timeout";
        break;
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode!.toInt(), dioError.response?.data);
      case DioErrorType.cancel:
        errorMsg = "Request was cancelled";
        break;
      case DioErrorType.badCertificate:
        errorMsg = "An error occurred";
        break;
      default:
        errorMsg = "Opps There was an Error , Pleas try again";
    }

    return ServerFailure(errorMsg);
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    String errorMsg = "An error occurred";

    if (statusCode == 404) {
      errorMsg = "Not found";
    } else if (statusCode == 500) {
      errorMsg = "Internal server error";
    } else if (statusCode >= 400 && statusCode < 600) {
      // errorMsg = "Response error: $statusCode";
      ServerFailure(response ['error']['message']);
    }

    return ServerFailure(errorMsg);
  }
}
