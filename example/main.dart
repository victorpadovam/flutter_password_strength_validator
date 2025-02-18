import 'package:flutter/material.dart';
import 'package:flutter_password_strength_validator/flutter_password_strength_validator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password Strength Validator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PasswordValidatorPage(),
    );
  }
}

class PasswordValidatorPage extends StatefulWidget {
  @override
  _PasswordValidatorPageState createState() => _PasswordValidatorPageState();
}

class _PasswordValidatorPageState extends State<PasswordValidatorPage> {
  // String password = "Password123!";
  // String result = PasswordValidator.validatePasswordStrength(password);
  // print(result); // Output: Strong
  
  final TextEditingController _passwordController = TextEditingController();
  String _validationMessage = '';

  void _validatePassword() {
    String password = _passwordController.text;
    String result = PasswordValidator.validatePasswordStrength(password);

    setState(() {
      _validationMessage = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Strength Validator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Enter your password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _validatePassword,
              child: Text('Validate Password'),
            ),
            SizedBox(height: 20),
            if (_validationMessage.isNotEmpty)
              Text(
                'Password Strength: $_validationMessage',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
