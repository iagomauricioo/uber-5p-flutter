import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/screens/conta_screen.dart';
import 'package:novo_uber_flutter/screens/viagens_screen.dart';
import 'package:novo_uber_flutter/widget/custom_button.dart';
import 'mercado_screen.dart';
import 'main_layout.dart'; // Import MainLayout

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentScreenIndex = 0;

  void _onContaPressed() {
    setState(() {
      currentScreenIndex = 2;
    });
  }

  void _onInicioPressed() {
    setState(() {
      currentScreenIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      body: Column(
        children: [
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
                TelaConta(),
              ],
            ),
          ),
        ],
      ),
      onContaPressed: _onContaPressed,
      currentScreenIndex: currentScreenIndex,
      onInicioPressed: _onInicioPressed,
    );
  }
}
