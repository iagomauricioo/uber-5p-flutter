import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/widget/bottom_navigation.dart';

class AppFooter extends StatefulWidget {
  final VoidCallback onInicioPressed;
  final VoidCallback onOpcoesPressed;
  final VoidCallback onAtividadePressed;
  final VoidCallback onContaPressed;
  final int currentIndex;

  const AppFooter(
      {super.key,
      required this.onInicioPressed,
      required this.onOpcoesPressed,
      required this.onAtividadePressed,
      required this.onContaPressed,
      required this.currentIndex});

  @override
  State<AppFooter> createState() => _AppFooterState();
}

class _AppFooterState extends State<AppFooter> {
  void _onItemTapped(int index) {
    if (index == 0) {
      widget.onInicioPressed();
    }
    if (index == 1) {
      widget.onOpcoesPressed();
    }
    if (index == 2) {
      widget.onAtividadePressed();
    }
    if (index == 3) {
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
              selected: widget.currentIndex == 2,
              onTap: () => _onItemTapped(2)),
          BottomNavItem(
              icon: Icons.list_alt,
              label: 'Atividade',
              selected: widget.currentIndex == 3,
              onTap: () => _onItemTapped(3)),
          BottomNavItem(
              icon: Icons.person,
              label: 'Conta',
              selected: widget.currentIndex == 4,
              onTap: () => _onItemTapped(4)),
        ],
      ),
    );
  }
}
