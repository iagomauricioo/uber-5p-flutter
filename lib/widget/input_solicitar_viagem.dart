import 'package:flutter/material.dart';

import '../themes/CustomTheme.dart';

class InputSolicitarViagem extends StatefulWidget {

  InputSolicitarViagem({super.key});

  @override
  State<InputSolicitarViagem> createState() => _InputSolicitarViagemState();
}

class _InputSolicitarViagemState extends State<InputSolicitarViagem> {
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  final FocusNode destinoFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Dá foco automático no segundo campo após o build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      destinoFocusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    textController1.dispose();
    textController2.dispose();
    destinoFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: CustomTheme.primaryText,
            width: 1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            // Campo "Sua localização atual"
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: CustomTheme.secondaryBackground,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
                border: Border.all(
                  color: CustomTheme.alternate,
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: textController1,
                decoration: const InputDecoration(
                  hintText: 'Sua localização atual',
                  hintStyle: TextStyle(color: CustomTheme.primaryText),
                  border: InputBorder.none,
                ),
                style: const TextStyle(fontSize: 14, color: CustomTheme.primaryText),
              ),
            ),
            // Campo "Para onde você vai?" com ícone "+"
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: CustomTheme.secondaryBackground,
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(20)),
                border: Border.all(
                  color: CustomTheme.alternate,
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: textController2,
                      decoration: const InputDecoration(
                        hintText: 'Para onde você vai?',
                        hintStyle: TextStyle(color: CustomTheme.primaryText),
                        border: InputBorder.none,
                      ),
                      style: const TextStyle(fontSize: 14, color: CustomTheme.primaryText),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: CustomTheme.primaryText,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: CustomTheme.alternate,
                        width: 1,
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: CustomTheme.secondaryText,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
