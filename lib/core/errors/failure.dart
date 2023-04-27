import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection Timeout With ApiServer');

      case DioErrorType.sendTimeout:
        return ServerFailure('Send Timeout With ApiServer');

      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive Timeout With ApiServer');

      case DioErrorType.badCertificate:
        return ServerFailure('Your request not found, please try again later!');

      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );

      case DioErrorType.cancel:
        return ServerFailure('Request to ApiServer was canceled');

      case DioErrorType.connectionError:
        return ServerFailure('No Internet Connection');

      case DioErrorType.unknown:
        return ServerFailure(
          "Unexpected Error, please try again!",
        );

      default:
        return ServerFailure(
          "Opps something went wrong, please try again later!",
        );
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    }
    return ServerFailure("Opps something went wrong, please try again later!");
  }
}
