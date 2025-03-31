import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool showLine;
  final bool isActive;
  final VoidCallback? onTap;

  const CustomButton({
    super.key,
    required this.icon,
    required this.label,
    this.showLine = false,
    this.isActive = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            height: 45.7, // Altura mantida
            decoration: BoxDecoration(
              color: const Color(0xFF14181B),
              border: isActive
                  ? const Border(
                      bottom: BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    )
                  : null,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icon,
                      color: isActive
                          ? Colors.white
                          : Colors.white.withOpacity(0.7),
                      size: 24,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      label,
                      style: TextStyle(
                        fontFamily: 'Inter Tight',
                        fontWeight: FontWeight.w600,
                        color: isActive
                            ? Colors.white
                            : Colors.white.withOpacity(0.7),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
