import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'presentation/view.dart';
import 'presentation/viewmodel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CurrencyConverterViewModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CurrencyConverterView());
  }
}
