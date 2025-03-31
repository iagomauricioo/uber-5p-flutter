import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/widget/app_footer.dart';
import 'package:novo_uber_flutter/widget/app_header.dart';

class MainLayout extends StatelessWidget {
  final Widget body;

  const MainLayout({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(), // <app-header />
      backgroundColor: const Color(0xFF1D2428),
      body: body, // <router-outlet /> (conteúdo dinâmico)
      bottomNavigationBar: const AppFooter(), // <app-footer />
    );
  }
}