# Flutter Password Strength Validator

## Objective

The **Flutter Password Strength Validator** is a Flutter package designed to validate password strength with customizable and dynamic messages. It allows you to easily and efficiently validate passwords based on security criteria, such as:

- Minimum length
- Contains uppercase and lowercase letters
- Contains numbers
- Contains special characters

## Exemple
```
String password = "Password123!";
String result = PasswordValidator.validatePasswordStrength(password);
print(result); // Output: Strong
```

## Customizable Validation Messages:
- You can pass custom validation messages for each rule to personalize the experience for your users. For instance, you can provide different messages based on the country or language preferences of the user.

```
String result = PasswordValidator.validatePasswordStrength(
  password,
  minLengthMessage: 'Your password must be at least 8 characters long.',
  hasUpperCaseMessage: 'The password must contain at least one uppercase letter.',
  hasLowerCaseMessage: 'The password must contain at least one lowercase letter.',
  hasNumberMessage: 'Your password must include at least one number.',
  hasSpecialCharMessage: 'The password must contain at least one special character.',
  veryStrongPasswordMessage: 'Very strong',
  strongPasswordMessage: 'Strong',
  veryweakMessage: 'Very weak',
);
```

## Parameters
```
password: The password to be validated.
minLengthMessage: Custom message for minimum length validation.
hasUpperCaseMessage: Custom message for the uppercase letter validation.
hasLowerCaseMessage: Custom message for the lowercase letter validation.
hasNumberMessage: Custom message for the number validation.
hasSpecialCharMessage: Custom message for special character validation.
veryStrongPasswordMessage: Custom message for very strong password validation.
strongPasswordMessage: Custom message for strong password validation.
veryweakMessage: Custom message for very weak password validation.
```

## Why This Package?
- **Simple Integration**: Easily integrate password validation into your Flutter application.
- **Customizable Validation Messages**: Customize messages for different validation rules (e.g., minimum length, number requirement, etc.).
- **Localization**: Customize validation messages dynamically, allowing users to receive messages in their preferred language, based on their location or settings.
- **Security First**: Improve your app's security by ensuring users create strong passwords.

## Installation

To install the **Flutter Password Strength Validator** package, add it to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_password_strength_validator: ^1.0.0 
