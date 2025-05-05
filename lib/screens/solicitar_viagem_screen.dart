import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';
import 'package:novo_uber_flutter/widget/button_select.dart';
import 'package:novo_uber_flutter/widget/input_solicitar_viagem.dart';

class SolicitarViagemScreen extends StatelessWidget {
  const SolicitarViagemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(6, 30, 6, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back,
                color: CustomTheme.primaryText,
                size: 30,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 24),
                child: Text(
                  'Planeje sua próxima viagem',
                  style: TextStyle(
                      color: CustomTheme.primaryText,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 24),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ButtonSelect(icon: Icons.watch_later, title: 'Ir agora'),
                ButtonSelect(icon: Icons.person, title: 'Para mim'),
              ],
            ),
          ),
          InputSolicitarViagem(),
        ],
      ),
    );
  }
}
