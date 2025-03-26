import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/user_manager.dart';

class AuthView extends StatefulWidget {
  @override
  _AuthViewState createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Вход в систему')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Имя пользователя'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String username = _usernameController.text;
                String email = _emailController.text;
                if (username.isNotEmpty && email.isNotEmpty) {
                  Provider.of<UserManager>(
                    context,
                    listen: false,
                  ).signIn(username, email);
                }
              },
              child: Text('Войти'),
            ),
          ],
        ),
      ),
    );
  }
}
