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

  static const String loginRoute = '/login';
  static const String accueilRoute = '/accueil';
  static const String historyRoute = '/history';
  static const String newRoute = '/new';
  static const String pendingRoute = '/pending';
  static const String openReclamationRoute = '/open-reclamation';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATB Reclamation',
      debugShowCheckedModeBanner: false,
      initialRoute: loginRoute,
      routes: {
        loginRoute: (context) => const LoginPage(),
        accueilRoute: (context) => const AccueilPage(),
        historyRoute: (context) => const HistoryPage(),
        newRoute: (context) => const NewReclamationPage(),

        // Les deux routes pointent vers la même page pour éviter les erreurs.
        pendingRoute: (context) => const OpenReclamationPage(),
        openReclamationRoute: (context) => const OpenReclamationPage(),
      },
    );
  }
}