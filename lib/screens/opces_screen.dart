import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';

class TelaOpcoes extends StatelessWidget {
  const TelaOpcoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        'Tela de opções!!!!!!!!!!!!!!!',
        style: TextStyle(color: CustomTheme.primaryText, fontSize: 30),
      ),
    );
  }
}
