import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/screens/viagens_screen.dart';
import 'package:novo_uber_flutter/widget/card_list.dart';
import 'package:novo_uber_flutter/widget/places_container.dart';
import 'package:novo_uber_flutter/widget/search_input.dart';
import 'package:novo_uber_flutter/widget/suggestions.dart';
import 'package:novo_uber_flutter/widget/custom_button.dart';

import 'mercado_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentScreenIndex = 0; // 0 = Viagens, 1 = Mercado

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Botões de alternância (Viagens / Mercado)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              icon: Icons.directions_car,
              label: 'Viagens',
              showLine: true,
              isActive: currentScreenIndex == 0,
              onTap: () => setState(() => currentScreenIndex = 0),
            ),
            CustomButton(
              icon: Icons.shopping_basket,
              label: 'Mercado',
              showLine: false,
              isActive: currentScreenIndex == 1,
              onTap: () => setState(() => currentScreenIndex = 1),
            ),
          ],
        ),
        const SizedBox(height: 16),

        Expanded(
          child: IndexedStack(
            index: currentScreenIndex,
            children: const [
              TelaViagens(),
              TelaMercado(),
            ],
          ),
        ),
      ],
    );
  }
}