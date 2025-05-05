import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/widget/card_list_image_button.dart';

import '../widget/card_list.dart';
import '../widget/custom_button.dart';
import '../widget/places_container.dart';
import '../widget/search_input.dart';
import '../widget/suggestions.dart';

class TelaViagens extends StatelessWidget {
  const TelaViagens({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                icon: Icons.directions_car,
                label: 'Viagens',
                isActive: true,
              ),
            ],
          ),
          SearchInput(
            onChanged: (text) {
              print(text);
            },
            onTap: () {
              Navigator.of(context).pushNamed('/solicitar');
            },
            hintText: 'Para onde?',
          ),
          const SizedBox(height: 10),
          const Places(),
          const Suggestions(),
          const CardListWidget(),
          const CardListImageButton(),
        ],
      ),
    );
  }
}
