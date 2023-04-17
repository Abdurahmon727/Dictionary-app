import 'package:equatable/equatable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo with EquatableMixin {
  Future<bool> get connected;

  const NetworkInfo();
}

class NetworkInfoImpl extends NetworkInfo {
  const NetworkInfoImpl();

  @override
  Future<bool> get connected async =>
      await InternetConnectionChecker().hasConnection;

  Stream<InternetConnectionStatus> get connectionStatus =>
      InternetConnectionChecker().onStatusChange;

  @override
  List<Object?> get props => [];
}
