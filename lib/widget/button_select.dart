import 'package:flutter/material.dart';

import '../themes/CustomTextStyle.dart';
import '../themes/CustomTheme.dart';

class ButtonSelect extends StatelessWidget {
  final IconData icon;
  final String title;

  const ButtonSelect({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 50,
      decoration: BoxDecoration(
        color: CustomTheme.secondaryBackground,
        borderRadius: BorderRadius.circular(24),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: CustomTheme.alternate,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center, // <-- aqui
          children: [
            Icon(
              icon,
              color: CustomTheme.primaryText,
              size: 20,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: CustomTextStyle.bodyMedium,
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: CustomTheme.primaryText,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
