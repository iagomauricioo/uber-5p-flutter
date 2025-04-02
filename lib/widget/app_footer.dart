import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/widget/bottom_navigation.dart';

import '../screens/my_home_page.dart';

class AppFooter extends StatefulWidget {
  final VoidCallback onContaPressed;
  final VoidCallback onInicioPressed;
  final int currentIndex;

  const AppFooter(
      {
        super.key,
        required this.onContaPressed,
        required this.onInicioPressed,
        required this.currentIndex
      });

  @override
  State<AppFooter> createState() => _AppFooterState();
}

class _AppFooterState extends State<AppFooter> {
  void _onItemTapped(int index) {
    if (index == 0) {
      widget.onInicioPressed();
    }
    if (index == 2) {
      widget.onContaPressed();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.black12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavItem(
              icon: Icons.home,
              label: 'Início',
              selected: widget.currentIndex == 0,
              onTap: () => _onItemTapped(0)),
          BottomNavItem(
              icon: Icons.grid_on_sharp,
              label: 'Opções',
              selected: widget.currentIndex == 1,
              onTap: () => _onItemTapped(1)),
          BottomNavItem(
              icon: Icons.list_alt,
              label: 'Atividade',
              selected: widget.currentIndex == 1,
              onTap: () => _onItemTapped(1)),
          BottomNavItem(
              icon: Icons.person,
              label: 'Conta',
              selected: widget.currentIndex == 2,
              onTap: () => _onItemTapped(2)),
        ],
      ),
    );
  }
}
