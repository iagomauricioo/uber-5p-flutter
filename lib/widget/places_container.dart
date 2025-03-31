import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/themes/DivideList.dart';
import 'package:novo_uber_flutter/widget/place_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Places extends StatelessWidget {
  const Places({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0, 1),
      child: Container(
        width: 356.4,
        height: 188.9,
        decoration: const BoxDecoration(
          color: Color(0x0014181B),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Expanded(
              child: PlaceItem(
                icon: Icons.star,
                title: 'Apartamento',
                subtitle: 'Rua Marquês do Herval',
              ),
            ),
            const Expanded(
              child: PlaceItem(
                icon: FontAwesomeIcons.solidClock,
                title: 'Campus II - CESMAC',
                subtitle: 'R. da Harmonia, 918 - Farol - Maceió...',
              ),
            ),
          ].divide(const SizedBox(height: 6)),
        ),
      ),
    );
  }
}
