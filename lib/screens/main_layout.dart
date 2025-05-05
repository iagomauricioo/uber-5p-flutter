import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/widget/app_footer.dart';
import 'package:novo_uber_flutter/widget/app_header.dart';

import '../themes/CustomTheme.dart';

class MainLayout extends StatelessWidget {
  final Widget body;

  const MainLayout({
    super.key,
    required this.body,
  });

  static const List<String> _routeNames = [
    '/viagens',
    '/opcoes',
    '/atividade',
    '/conta',
  ];

  int _getCurrentIndex(String? routeName) {
    return _routeNames.indexWhere((r) => r == routeName);
  }

  void _onItemTapped(BuildContext context, int index) {
    final targetRoute = _routeNames[index];
    if (ModalRoute.of(context)?.settings.name != targetRoute) {
      Navigator.pushReplacementNamed(context, targetRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;
    final currentIndex = _getCurrentIndex(currentRoute);

    return Scaffold(
      appBar: const AppHeader(),
      backgroundColor: const Color(0xFF1D2428),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: CustomTheme.secondaryBackground,
        currentIndex: currentIndex < 0 ? 0 : currentIndex,
        selectedItemColor: Colors.white,
        // Cor dos ícones/texto selecionado
        unselectedItemColor: Colors.white70,
        // Cor dos ícones/texto não selecionado
        onTap: (index) => _onItemTapped(context, index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on_sharp),
            label: 'Opções',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Atividade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Conta',
          ),
        ],
      ),
    );
  }
}
