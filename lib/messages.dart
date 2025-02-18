import 'package:intl/intl.dart';

class Messages {
  static String passwordNotEmail() {
    return Intl.message(
      'A senha não pode ser um e-mail.',
      name: 'passwordNotEmail',
      desc: 'Mensagem para indicar que a senha não pode ser um e-mail',
    );
  }

  static String passwordIsNumeric() {
    return Intl.message(
      'A senha não pode ser um número.',
      name: 'passwordIsNumeric',
      desc: 'Mensagem para indicar que a senha não pode ser um número',
    );
  }

  static String passwordTooShort() {
    return Intl.message(
      'A senha deve ter pelo menos 8 caracteres.',
      name: 'passwordTooShort',
      desc: 'Mensagem para indicar que a senha é muito curta',
    );
  }

  static String passwordContainsUpperCase() {
    return Intl.message(
      'A senha deve conter pelo menos uma letra maiúscula.',
      name: 'passwordContainsUpperCase',
      desc: 'Mensagem para indicar que a senha deve ter uma letra maiúscula',
    );
  }

  static String passwordContainsLowerCase() {
    return Intl.message(
      'A senha deve conter pelo menos uma letra minúscula.',
      name: 'passwordContainsLowerCase',
      desc: 'Mensagem para indicar que a senha deve ter uma letra minúscula',
    );
  }

  static String passwordContainsNumber() {
    return Intl.message(
      'A senha deve conter pelo menos um número.',
      name: 'passwordContainsNumber',
      desc: 'Mensagem para indicar que a senha deve conter um número',
    );
  }

  static String passwordContainsSpecialCharacter() {
    return Intl.message(
      'A senha deve conter pelo menos um caractere especial.',
      name: 'passwordContainsSpecialCharacter',
      desc: 'Mensagem para indicar que a senha deve ter um caractere especial',
    );
  }

  static String strongPassword() {
    return Intl.message(
      'Senha forte.',
      name: 'strongPassword',
      desc: 'Mensagem para indicar que a senha é forte',
    );
  }

  static String veryStrongPassword() {
    return Intl.message(
      'Muito Forte',
      name: 'veryStrongPassword',
      desc: 'Mensagem para indicar que a senha é muito forte',
    );
  }

  static String strongPasswordRating() {
    return Intl.message(
      'Forte',
      name: 'strongPasswordRating',
      desc: 'Mensagem para indicar que a senha é forte',
    );
  }

  static String moderatePasswordRating() {
    return Intl.message(
      'Moderada',
      name: 'moderatePasswordRating',
      desc: 'Mensagem para indicar que a senha é moderada',
    );
  }

  static String weakPasswordRating() {
    return Intl.message(
      'Fraca',
      name: 'weakPasswordRating',
      desc: 'Mensagem para indicar que a senha é fraca',
    );
  }

  static String veryWeakPassword() {
    return Intl.message(
      'Muito Fraca',
      name: 'veryWeakPassword',
      desc: 'Mensagem para indicar que a senha é muito fraca',
    );
  }
}
