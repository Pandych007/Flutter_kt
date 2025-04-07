import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:flutter_kt_7/main.dart';
import 'package:flutter_kt_7/models/user_model.dart';
import 'package:flutter_kt_7/providers/user_provider.dart';

// Фейковая реализация без реального HTTP
class FakeUserProvider extends ChangeNotifier implements UserProvider {
  @override
  List<User> get users => [
    User(id: 1, name: 'Test User 1', email: 'test1@example.com'),
    User(id: 2, name: 'Test User 2', email: 'test2@example.com'),
  ];

  @override
  bool get isLoading => false;

  // Чтобы не ругался на отсутствие метода
  @override
  Future<void> fetchUsers() async {}

  // Эти геттеры/сеттеры могут быть необязательны, если не используются в коде
  @override
  set users(List<User> _) {}

  @override
  set isLoading(bool _) {}
}

void main() {
  testWidgets('User list loads correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider<UserProvider>.value(
        value: FakeUserProvider(),
        child: const MyApp(),
      ),
    );

    await tester.pumpAndSettle();

    // Проверим наличие ListTile и конкретных пользователей
    expect(find.byType(ListTile), findsWidgets);
    expect(find.text('Test User 1'), findsOneWidget);
    expect(find.text('Test User 2'), findsOneWidget);
  });
}
