import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/widget/card_list.dart';
import 'package:novo_uber_flutter/widget/places_container.dart';
import 'package:novo_uber_flutter/widget/search_input.dart';
import 'package:novo_uber_flutter/widget/suggestions.dart';

import '../widget/custom_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF1D2428),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomButton(
                  icon: Icons.directions_car,
                  label: 'Viagens',
                  showLine: true,
                ),
                CustomButton(
                  icon: Icons.shopping_basket,
                  label: 'Mercado',
                  showLine: false, // Sem linha para o botão de mercado
                ),
              ],
            ),
            SizedBox(height: 16),
            SearchInput(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Places(),
                    Suggestions(),
                    CardListWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
