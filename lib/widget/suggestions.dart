import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/widget/suggestion_item.dart';

import '../themes/CustomTextStyle.dart';
import '../themes/CustomTheme.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0, 1),
      child: Container(
        width: 356.4,
        height: 188.9,
        decoration: const BoxDecoration(
          color: CustomTheme.primaryColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: AlignmentDirectional(-1, -1),
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Text(
                      'Sugestões',
                      style: CustomTextStyle.bodyMedium,

                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => print('Button pressed ...'),
                  child: Text(
                    'Ver tudo',
                    style: CustomTextStyle.titleSmall.copyWith(
                      color: CustomTheme.secondaryText,
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SuggestionItem(
                  icon: Icons.directions_car_rounded,
                  label: 'Carro',
                  badgeText: 'Promo',
                ),
                SuggestionItem(icon: Icons.card_giftcard, label: 'Envios'),
                SuggestionItem(icon: Icons.motorcycle_sharp, label: 'Moto'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
