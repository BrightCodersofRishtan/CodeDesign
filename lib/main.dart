import 'package:flutter/material.dart';
import 'package:storeapp/config/app_router.dart';
import 'package:storeapp/config/theme.dart';
import 'package:storeapp/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'storapp',
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}
