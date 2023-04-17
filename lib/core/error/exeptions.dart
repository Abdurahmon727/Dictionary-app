import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class ServerException extends DioError
    with EquatableMixin
    implements Exception {
  final String statusMessage;
  final num statusCode;

  ServerException({
    required this.statusMessage,
    required this.statusCode,
  }) : super(requestOptions: RequestOptions(path: ''));

  @override
  String toString() =>
      'ServerException(statusMessage: $statusMessage, statusCode: $statusCode)';

  @override
  List<Object?> get props => [];
}

class CacheException with EquatableMixin implements Exception {
  final String statusMessage;
  final num statusCode;
  const CacheException({
    required this.statusMessage,
    required this.statusCode,
  });

  @override
  String toString() =>
      'ServerException(statusMessage: $statusMessage, statusCode: $statusCode)';

  @override
  List<Object?> get props => [statusMessage, statusCode];
}
