import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/accueil_page.dart';
import 'pages/history_page.dart';
import 'pages/new_reclamation_page.dart';
import 'pages/open_reclamations_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/accueil': (context) => const AccueilPage(),
        '/history': (context) => const HistoryPage(),
        '/new': (context) => const NewReclamationPage(),
        '/open-reclamation': (context) => const OpenReclamationPage(),
      },
    );
  }
}
