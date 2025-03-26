import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/user_manager.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userManager = Provider.of<UserManager>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Главная страница')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Привет, ${userManager.username}!'),
            Text('Ваш email: ${userManager.userEmail}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => userManager.signOut(),
              child: Text('Выйти'),
            ),
          ],
        ),
      ),
    );
  }
}
