import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/widget/bottom_navigation.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.black12,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavItem(icon: Icons.home, label: 'Início', selected: true),
          BottomNavItem(icon: Icons.grid_on_sharp, label: 'Opções'),
          BottomNavItem(icon: Icons.list_alt, label: 'Atividade'),
          BottomNavItem(icon: Icons.person, label: 'Conta'),
        ],
      ),
    );
  }
}