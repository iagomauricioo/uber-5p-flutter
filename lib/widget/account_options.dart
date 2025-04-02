import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/widget/suggestion_item.dart';
import '../themes/CustomTheme.dart';

class AccountOptions extends StatelessWidget {
  const AccountOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 410,
          height: 188.9,
          decoration: const BoxDecoration(
            color: CustomTheme.primaryColor,
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SuggestionItem(
                      icon: Icons.donut_large,
                      label: 'Ajuda',
                      width: 120,
                      height: 100,
                      iconSize: 26,
                  ),
                  SuggestionItem(
                      icon: Icons.wallet,
                      label: 'Carteira',
                      width: 120,
                      height: 100,
                      iconSize: 26,
                  ),
                  SuggestionItem(
                      icon: Icons.local_activity,
                      label: 'Atividades',
                      width: 120,
                      height: 100,
                      iconSize: 26,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
