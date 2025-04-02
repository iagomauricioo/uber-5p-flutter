import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const BottomNavItem(
      {super.key,
      required this.icon,
      required this.label,
      this.selected = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: selected ? Colors.white : Colors.grey),
          Text(label,
              style: TextStyle(color: selected ? Colors.white : Colors.grey)),
        ],
      ),
    );
  }
}
