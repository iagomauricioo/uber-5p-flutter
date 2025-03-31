import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';

class PlaceItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const PlaceItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: CustomTheme.alternate,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 10,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: CustomTheme.alternate,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    icon,
                    color: CustomTheme.primaryText,
                    size: 24,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontFamily: 'Inter Tight',
                        color: CustomTheme.primaryText,
                        letterSpacing: 0.0,
                      ),
                    ),
                    Text(
                      subtitle,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontFamily: 'Inter Tight',
                        color: CustomTheme.primaryText,
                        letterSpacing: 0.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: CustomTheme.primaryText,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
