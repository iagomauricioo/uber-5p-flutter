import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/widget/app_footer.dart';
import 'package:novo_uber_flutter/widget/app_header.dart';

class MainLayout extends StatelessWidget {
  final Widget body;
  final VoidCallback onContaPressed;
  final int currentScreenIndex;

  const MainLayout({
    super.key,
    required this.body,
    required this.onContaPressed,
    required this.currentScreenIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(),
      backgroundColor: const Color(0xFF1D2428),
      body: body,
      bottomNavigationBar: AppFooter(
        onContaPressed: onContaPressed, // Passa o callback recebido
        currentIndex: currentScreenIndex,
      ),
    );
  }
}
