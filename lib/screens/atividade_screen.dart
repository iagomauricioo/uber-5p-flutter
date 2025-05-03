import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/themes/CustomTextStyle.dart';

import '../themes/CustomTheme.dart';

class TelaAtividade extends StatelessWidget {
  const TelaAtividade({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                'Atividade',
                style: TextStyle(
                    color: CustomTheme.primaryText,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: CustomTheme.primaryColor,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: CustomTheme.alternate, width: 2),
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 220,
                      decoration: BoxDecoration(
                        color: CustomTheme.secondaryBackground,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: CustomTheme.alternate),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/mapa-uber.jpeg',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: CustomTheme.secondaryBackground,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('R. Marquês do Herval - Farol',
                              style: CustomTextStyle.bodyMedium),
                          const SizedBox(height: 4),
                          const Text(
                            '8 de mar. - 14:30',
                            style: TextStyle(color: CustomTheme.secondaryText),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'R\$ 35,90',
                            style: TextStyle(color: CustomTheme.secondaryText),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              ElevatedButton.icon(
                                onPressed: () => print('Avaliar pressed'),
                                icon:
                                    const Icon(Icons.star, color: Colors.white),
                                label: const Text('Avaliar'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: CustomTheme.alternate,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                              const SizedBox(width: 8),
                              ElevatedButton.icon(
                                onPressed: () => print('Reagendar pressed'),
                                icon: const Icon(Icons.calendar_today,
                                    color: Colors.white),
                                label: const Text('Reagendar'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: CustomTheme.alternate,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text('Lista de Corridas', style: CustomTextStyle.bodyMedium),
            const SizedBox(height: 16),
            ListView(
              padding: EdgeInsets.zero,
              primary: false,
              shrinkWrap: true,
              children: [
                _buildCorridaItem(
                  'Av. Dr. Antônio Gouveia, 293 - Maceió, AL',
                  '12 de novembro, 2023 - 16:15',
                  'R\$ 28,50',
                  Icons.directions_car,
                ),
                _buildCorridaItem(
                  'Estacionamento Jaraguá - Maceió, AL',
                  '12 de abril, 2023 - 22:10',
                  'R\$ 22,75',
                  Icons.two_wheeler,
                ),
                _buildCorridaItem(
                  'Av. Dr. Antônio Gouveia, 293 - Maceió, AL',
                  '12 de novembro, 2023 - 16:15',
                  'R\$ 28,50',
                  Icons.directions_car,
                ),
                _buildCorridaItem(
                  'Estacionamento Jaraguá - Maceió, AL',
                  '12 de abril, 2023 - 22:10',
                  'R\$ 22,75',
                  Icons.two_wheeler,
                ),
                _buildCorridaItem(
                  'Av. Dr. Antônio Gouveia, 293 - Maceió, AL',
                  '12 de novembro, 2023 - 16:15',
                  'R\$ 28,50',
                  Icons.directions_car,
                ),
                _buildCorridaItem(
                  'Estacionamento Jaraguá - Maceió, AL',
                  '12 de abril, 2023 - 22:10',
                  'R\$ 22,75',
                  Icons.two_wheeler,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCorridaItem(
      String endereco, String data, String preco, IconData icon) {
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
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: CustomTheme.secondaryBackground,
                    borderRadius: BorderRadius.circular(8),
                  ),
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
                      Text(preco,
                          style: const TextStyle(
                              color: CustomTheme.secondaryText, fontSize: 12)),
                    ],
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () => print('Reagendar pressed'),
                  icon: const Icon(Icons.replay, size: 15),
                  label: const Text('Reagendar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomTheme.alternate,
                    foregroundColor: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 220,
          child: Divider(
              height: 1, thickness: 1, color: Colors.white24),
        ),
      ],
    );
  }
}
