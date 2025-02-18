library flutter_password_strength_validator;

class PasswordValidator {
  // Função para validar a senha com mensagens personalizadas
  static String validatePasswordStrength(
    String password, {
    String? minLengthMessage,
    String? hasUpperCaseMessage,
    String? hasLowerCaseMessage,
    String? hasNumberMessage,
    String? hasSpecialCharMessage,
    String? strongPasswordMessage,
    String? veryStrongPasswordMessage,
    String? veryweakMessage,
  }) {
    if (password.length < 8) {
      return minLengthMessage ??
          'The password must be at least 8 characters long.';
    }
    if (!RegExp(r'[A-Z]').hasMatch(password)) {
      return hasUpperCaseMessage ??
          'A senha deve conter pelo menos uma letra maiúscula.';
    }
    if (!RegExp(r'[a-z]').hasMatch(password)) {
      return hasLowerCaseMessage ??
          'The password should contain at least 1 uppercase character.';
    }
    if (!RegExp(r'[0-9]').hasMatch(password)) {
      return hasNumberMessage ??
          'The password must contain at least one number.';
    }
    if (!RegExp(r'[@$!%*?&]').hasMatch(password)) {
      return hasSpecialCharMessage ??
          'The password must contain at least one special character.';
    }

    // Se a senha passar em todas as validações
    int score = _calculateStrengthScore(password);
    if (score == 5) {
      return veryStrongPasswordMessage ?? 'Very strong';
    }
    if (score == 4) {
      return strongPasswordMessage ?? 'Strong';
    }

    return veryweakMessage ?? 'Very weak';
  }

  // Função para calcular a força da senha (apenas um exemplo básico)
  static int _calculateStrengthScore(String password) {
    int score = 0;
    if (password.length >= 8) score++;
    if (RegExp(r'[A-Z]').hasMatch(password)) score++;
    if (RegExp(r'[a-z]').hasMatch(password)) score++;
    if (RegExp(r'[0-9]').hasMatch(password)) score++;
    if (RegExp(r'[@$!%*?&]').hasMatch(password)) score++;
    return score;
  }
}
