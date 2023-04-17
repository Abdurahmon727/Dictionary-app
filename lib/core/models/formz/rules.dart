abstract class Rules {
  const Rules();
}

class PasswordRules extends Rules {
  final int minPasswordLength;
  final int maxPasswordLength;
  final bool includeNumbers;
  final bool includeChars;
  final bool includeLetters;
  const PasswordRules({
    required this.minPasswordLength,
    required this.maxPasswordLength,
    required this.includeNumbers,
    required this.includeChars,
    required this.includeLetters,
  });
}

class CustomRules extends Rules {
  final int minLength;
  final int maxLength;
  const CustomRules({
    required this.minLength,
    required this.maxLength,
  });
}
