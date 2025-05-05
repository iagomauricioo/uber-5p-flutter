import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';
import 'package:novo_uber_flutter/widget/button_select.dart';
import 'package:novo_uber_flutter/widget/input_solicitar_viagem.dart';

import '../widget/corridas_recentes.dart';

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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                children: [
                  _buildCorridaItem(
                    'Campus II - Cesmac - Edifício Dr. Alberto Antunes',
                    'R. da Harmonia, 918 - Farol - Maceió - AL, 57081-350',
                    Icons.watch_later,
                  ),
                  _buildCorridaItem(
                    'Rodoviária Interestadual de Maceió João Paulo II',
                    'Feitosa - Maceió - AL',
                    Icons.watch_later,
                  ),
                  _buildCorridaItem(
                    'Campus II - Cesmac - Edifício Dr. Alberto Antunes',
                    'R. da Harmonia, 918 - Farol - Maceió - AL, 57081-350',
                    Icons.watch_later,
                  ),
                  _buildCorridaItem(
                    'Rodoviária Interestadual de Maceió João Paulo II',
                    'Feitosa - Maceió - AL',
                    Icons.watch_later,
                  ),
                  _buildCorridaItem(
                    'Campus II - Cesmac - Edifício Dr. Alberto Antunes',
                    'R. da Harmonia, 918 - Farol - Maceió - AL, 57081-350',
                    Icons.watch_later,
                  ),
                  _buildCorridaItem(
                    'Rodoviária Interestadual de Maceió João Paulo II',
                    'Feitosa - Maceió - AL',
                    Icons.watch_later,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildCorridaItem(String endereco, String data, IconData icon) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 3,
                color: Color(0x10000000),
                offset: Offset(0, 1),
              ),
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Icon(icon, color: Colors.white, size: 28),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(endereco,
                        style: const TextStyle(
                            color: CustomTheme.primaryText, fontSize: 14)),
                    Text(data,
                        style: const TextStyle(
                            color: CustomTheme.secondaryText, fontSize: 12)),
                    const SizedBox(height: 4),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
