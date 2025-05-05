import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/widget/app_footer.dart';
import 'package:novo_uber_flutter/widget/app_header.dart';

class MainLayout extends StatelessWidget {
  final Widget body;
  final VoidCallback onInicioPressed;
  final VoidCallback onOpcoesPressed;
  final VoidCallback onAtividadePressed;
  final VoidCallback onContaPressed;
  final VoidCallback onInputPressed;
  final int currentScreenIndex;

  const MainLayout({
    super.key,
    required this.body,
    required this.onInicioPressed,
    required this.onOpcoesPressed,
    required this.onAtividadePressed,
    required this.onContaPressed,
    required this.onInputPressed,
    required this.currentScreenIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(),
      backgroundColor: const Color(0xFF1D2428),
      body: body,
      bottomNavigationBar: AppFooter(
        onInicioPressed: onInicioPressed,
        onOpcoesPressed: onOpcoesPressed,
        onAtividadePressed: onAtividadePressed,
        onContaPressed: onContaPressed,
        currentIndex: currentScreenIndex,
      ),
    );
  }
}
