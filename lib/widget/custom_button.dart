import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool showLine;

  const CustomButton({
    super.key,
    required this.icon,
    required this.label,
    this.showLine = false, // Define se a linha branca será exibida
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 193.4,
        height: 45.7,
        decoration: const BoxDecoration(
          color: Color(0xFF14181B),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        color: const Color(0xFFFFFFFF),
                        size: 24,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        label,
                        style: const TextStyle(
                          fontFamily: 'Inter Tight',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.0,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (showLine)
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Container(
                    width: double.infinity,
                    height: 4,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}