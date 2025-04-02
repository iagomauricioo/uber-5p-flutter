import 'package:flutter/material.dart';

import '../themes/CustomTheme.dart';

class TelaAtividade extends StatelessWidget {
  const TelaAtividade({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Tela de atividade',
          style: TextStyle(color: CustomTheme.primaryText, fontSize: 30),
        )
      ],
    );
  }
}
