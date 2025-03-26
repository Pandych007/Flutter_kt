import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'state/user_manager.dart';
import 'views/main_view.dart';
import 'views/auth_view.dart';

void main() {
  runApp(UserApp());
}

class UserApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserManager(),
      child: Consumer<UserManager>(
        builder: (context, userManager, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: userManager.isLoggedIn ? MainView() : AuthView(),
          );
        },
      ),
    );
  }
}
