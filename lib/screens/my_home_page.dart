import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/themes/CustomTextStyle.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';
import 'package:novo_uber_flutter/widget/card_list.dart';
import 'package:novo_uber_flutter/widget/places_container.dart';
import 'package:novo_uber_flutter/widget/search_input.dart';
import 'package:novo_uber_flutter/widget/suggestions.dart';

import '../widget/bottom_navigation.dart';
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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: CustomTheme.secondaryBackground,
          automaticallyImplyLeading: false,
          flexibleSpace: const FlexibleSpaceBar(
            title: Align(
              alignment: AlignmentDirectional(0, 1),
              child: Text(
                'Uber',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: CustomTheme.primaryText,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 1,
        ),
      ),
      backgroundColor: const Color(0xFF1D2428),
      body: const Column(
        children: [
          // Parte FIXA (CustomButtons)
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    icon: Icons.directions_car,
                    label: 'Viagens',
                    showLine: true,
                  ),
                  CustomButton(
                    icon: Icons.shopping_basket,
                    label: 'Mercado',
                    showLine: false,
                  ),
                ],
              ),
              SizedBox(height: 16),
            ],
          ),

          // Parte ROLÁVEL
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SearchInput(), // Agora dentro do ScrollView
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
      bottomNavigationBar: Container(
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.black12,
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavItem(icon: Icons.home, label: 'Início'),
            BottomNavItem(icon: Icons.grid_on_sharp, label: 'Opções'),
            BottomNavItem(icon: Icons.list_alt, label: 'Atividade'),
            BottomNavItem(icon: Icons.person, label: 'Conta'),
          ],
        ),
      ),
    );
  }
}
