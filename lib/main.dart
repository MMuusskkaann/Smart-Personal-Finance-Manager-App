import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'logo_screen.dart';
import 'dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Finance App',
      theme: ThemeData(primarySwatch: Colors.blue),

      //  App starts with splash screen
      home: const LogoScreen(),

      //  Named routes
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/dashboard': (context) => const DashboardPage(),
      },
    );
  }
}
