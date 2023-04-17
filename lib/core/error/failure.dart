// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String errorMessage;
  final num statusCode;
  const Failure({
    required this.errorMessage,
    required this.statusCode,
  });
  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {
  final String errorMessage;
  final num statusCode;

  const ServerFailure({this.errorMessage = '', this.statusCode = 0})
      : super(errorMessage: errorMessage, statusCode: statusCode);

  @override
  List<Object> get props => [errorMessage, statusCode];
}

class CacheFailure extends Failure {
  final String errorMessage;
  final num statusCode;
  const CacheFailure({
    this.errorMessage = '',
    this.statusCode = 0,
  }) : super(errorMessage: errorMessage, statusCode: statusCode);
}
