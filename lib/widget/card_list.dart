import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:novo_uber_flutter/themes/CustomTextStyle.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';
import 'package:novo_uber_flutter/themes/DivideList.dart';
import 'package:provider/provider.dart';

import 'card_item.dart';

class CardListWidget extends StatefulWidget {
  const CardListWidget({super.key});

  @override
  State<CardListWidget> createState() => _CardListWidgetState();
}

class _CardListWidgetState extends State<CardListWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'Conforto nas suas viagens',
            textAlign: TextAlign.center,
            style: CustomTextStyle.bodyMedium,
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0, 1),
          child: Container(
            width: 356.4,
            height: 244.3,
            decoration: const BoxDecoration(
              color: Color(0x0014181B),
            ),
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const TravelOptionCard(
                          imageUrl: 'https://images.pexels.com/photos/27639789/pexels-photo-27639789/free-photo-of-noite-sombrio-escuro-carro.jpeg?auto=compress&cs=tinysrgb&w=600',
                          isNetworkImage: true,
                          title: 'Você escolhe',
                          description: 'Mais frio, sem papo? Você manda!',
                        ),
                        const TravelOptionCard(
                          imageUrl: 'https://images.pexels.com/photos/30463342/pexels-photo-30463342/free-photo-of-taxi-uber-amarelo-na-rua-urbana.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          isNetworkImage: true,
                          title: 'Carros mais novos',
                          description: 'E mais espaço para suas pernas',
                        ),
                        const TravelOptionCard(
                          imageUrl: 'https://images.pexels.com/photos/9260061/pexels-photo-9260061.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          isNetworkImage: true,
                          title: 'Bem avaliados',
                          description: 'Moristas parceiros com mais ⭐',
                        ),
                      ].divide(SizedBox(width: 12)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
