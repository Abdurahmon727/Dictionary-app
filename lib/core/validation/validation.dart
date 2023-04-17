import '../error/exeptions.dart';

abstract class Validation {
  static ServerException? isMailValid(String mail) {
    if (mail.isEmpty) {
      return ServerException(
        statusMessage: 'Email is required',
        statusCode: 400,
      );
    }

    if (!RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$').hasMatch(mail)) {
      return ServerException(
        statusMessage: 'Invalid Email',
        statusCode: 400,
      );
    }

    return null;
  }

  static ServerException? isPasswordValid(String password) {
    if (password.isEmpty) {
      return ServerException(
        statusMessage: 'Password is required.',
        statusCode: 400,
      );
    }

    if (password.length < 8) {
      return ServerException(
        statusMessage: 'Password needs to be at least 8 character long.',
        statusCode: 400,
      );
    }

    return null;
  }

  static ServerException? hasConfirmPasswordMatch(
      {required String password, required String confirmPassword}) {
    if (password != confirmPassword) {
      return ServerException(
        statusMessage: 'Password Mismatch',
        statusCode: 400,
      );
    }

    return null;
  }
}
