import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/widget/option_card.dart';
import 'package:novo_uber_flutter/widget/section_title.dart';

class TransportSection extends StatelessWidget {
  const TransportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SectionTitle(title: 'Vá a qualquer lugar'),
        const SizedBox(height: 16),
        Row(
          children: [
            OptionCard(
              icon: Icons.directions_car,
              text: 'Viagem',
              isPromo: true,
            ),
            const SizedBox(width: 16),
            OptionCard(
              icon: Icons.local_shipping,
              text: 'Envios',
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            OptionCard(
              icon: Icons.motorcycle,
              text: 'Moto',
            ),
            const SizedBox(width: 16),
            OptionCard(
              icon: Icons.child_care,
              text: 'Teens',
            ),
            const SizedBox(width: 16),
            OptionCard(
              icon: Icons.calendar_today,
              text: 'Reserve',
            ),
          ],
        ),
      ],
    );
  }
}

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SectionTitle(title: 'Peça o que precisar'),
        const SizedBox(height: 16),
        Row(
          children: [
            OptionCard(
              icon: Icons.shopping_cart,
              text: 'Mercado',
            ),
            const SizedBox(width: 16),
            OptionCard(
              icon: Icons.local_bar,
              text: 'Bebidas Alcoólicas',
              allowMultiline: true,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            OptionCard(
              icon: Icons.pets,
              text: 'Pet',
            ),
            const SizedBox(width: 16),
            OptionCard(
              icon: Icons.store,
              text: 'Lojas',
            ),
            const SizedBox(width: 16),
            OptionCard(
              icon: Icons.local_hospital,
              text: 'Saúde',
            ),
          ],
        ),
      ],
    );
  }
}
