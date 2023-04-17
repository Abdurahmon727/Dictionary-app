import 'package:equatable/equatable.dart';
import '../data/either.dart';
import '../error/failure.dart';

abstract class UseCase<Type, Params> {
  const UseCase();
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

class SignUpParams extends Equatable {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String gender;
  final String profession;
  final String mosque;

  const SignUpParams(
      {required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      required this.gender,
      required this.profession,
      required this.mosque});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [firstName, lastName, phoneNumber, gender, profession, mosque];
}
