import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;

  const BottomNavItem({super.key, required this.icon, required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        selected ? Icon(icon, color: Colors.white, size: 30) : Icon(icon, color: Colors.grey, size: 28),
        selected ? Text(label, style: const TextStyle(color: Colors.white)) : Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}