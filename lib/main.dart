import 'package:desafio_tela_inicial_medium/features/login/views/login.page.dart';
import 'package:desafio_tela_inicial_medium/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desafio Tea Inicial Medium',
      initialRoute: Routes.login,
      routes: {
        Routes.login: (_) => const LoginPage(),
      },
    );
  }
}
