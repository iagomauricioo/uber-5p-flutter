import 'package:flutter/material.dart';
import '../themes/CustomTheme.dart';
import '../themes/CustomTextStyle.dart';

class SuggestionItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? badgeText; // Texto opcional para rótulo (ex: "Promo")
  final double? width;
  final double? height;
  final double? iconSize;

  const SuggestionItem({
    super.key,
    required this.icon,
    required this.label,
    this.badgeText,
    this.width,
    this.height,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: width ?? 100,
            height: height ?? 100,
            decoration: BoxDecoration(
              color: CustomTheme.secondaryBackground,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: CustomTheme.primaryText, size: iconSize ?? 24),
                Text(label, style: CustomTextStyle.bodyMedium),
              ],
            ),
          ),
          if (badgeText != null)
            Positioned(
              top: 4,
              child: Container(
                width: 60,
                height: 20,
                decoration: BoxDecoration(
                  color: const Color(0x4D13FF00), // Verde translúcido
                  borderRadius: BorderRadius.circular(14),
                ),
                alignment: Alignment.center,
                child: Text(
                  badgeText!,
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.titleSmall.copyWith(fontSize: 12),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
