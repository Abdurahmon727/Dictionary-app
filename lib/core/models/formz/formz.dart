import 'package:dictionary_app/core/models/formz/rules.dart';
import 'package:equatable/equatable.dart';

import 'formz_status.dart';
import 'formz_type.dart';

class Formz with EquatableMixin {
  final FormzStatus status;
  final String message;
  Formz({
    required this.status,
    required this.message,
  });

  factory Formz.redirect(FormzType type,
      {required String value, Rules? rules}) {
    late Formz formz;

    switch (type) {
      case FormzType.email:
        formz = Formz.validateMail(mail: value);
        break;

      case FormzType.password:
        formz = Formz.validatePassword(
          value: value,
          rules: rules as PasswordRules,
        );
        break;
      case FormzType.custom:
        formz = Formz.validateCustom(
          value: value,
          rules: rules as CustomRules,
        );
        break;
      default:
        formz = Formz.pure();
    }

    return formz;
  }

  factory Formz.pure() => Formz(status: FormzStatus.pure, message: '');

  factory Formz.success() => Formz(
        status: FormzStatus.submissionSuccess,
        message: '',
      );

  factory Formz.failure(String message) => Formz(
        status: FormzStatus.submissionFailure,
        message: message,
      );

  factory Formz.validateMail({required String mail}) {
    if (mail.isEmpty) {
      return Formz.failure('Mail is empty');
    } else if (!RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$').hasMatch(mail)) {
      return Formz.failure('Mail is not valid');
    }
    return Formz(status: FormzStatus.submissionSuccess, message: '');
  }

  factory Formz.validatePassword({
    required String value,
    PasswordRules? rules = const PasswordRules(
      minPasswordLength: 0,
      maxPasswordLength: 100,
      includeNumbers: false,
      includeChars: false,
      includeLetters: false,
    ),
  }) {
    if (value.length < rules!.minPasswordLength) {
      return Formz.failure(
          'Password length must be at least ${rules.minPasswordLength} characters long.');
    } else if (value.length > rules.maxPasswordLength) {
      return Formz.failure(
        'Password length exceeds from max password length. Max password length is ${rules.minPasswordLength}.',
      );
    } else if (rules.includeNumbers && !RegExp(r'^[0-9]+$').hasMatch(value)) {
      return Formz.failure('Password must include numbers.');
    } else if (rules.includeNumbers &&
        !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
      return Formz.failure('Password must include letters.');
    }

    return Formz.success();
  }

  factory Formz.validateCustom(
      {required String value,
      CustomRules rules = const CustomRules(minLength: 0, maxLength: 100)}) {
    if (value.length < rules.minLength) {
      return Formz.failure('Min length is ${rules.minLength}');
    } else if (value.length > rules.maxLength) {
      return Formz.failure('Max length is ${rules.minLength}');
    }
    return Formz.success();
  }

  @override
  List<Object> get props => [status, message];

  Formz copyWith({
    FormzStatus? status,
    String? message,
  }) {
    return Formz(
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  @override
  bool get stringify => true;
}
