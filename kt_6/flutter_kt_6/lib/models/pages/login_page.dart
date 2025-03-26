import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/auth_service.dart'; // Импортируйте сервис аутентификации

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = '';

  void _login() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await signInWithEmailPassword(email, password);
    if (user != null) {
      // Успешный вход
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ), // Замените на вашу домашнюю страницу
      );
    } else {
      // Ошибка входа
      setState(() {
        _errorMessage = 'Неверный логин или пароль';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Вход')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Электронная почта',
                errorText: _errorMessage.isEmpty ? null : _errorMessage,
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Пароль'),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _login, child: Text('Войти')),
          ],
        ),
      ),
    );
  }
}
