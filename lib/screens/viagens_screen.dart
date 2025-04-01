import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/widget/card_list_image_button.dart';

import '../widget/card_list.dart';
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
          SearchInput(
            onChanged: (text) {
              print(text);
            },
            onTap: () {
              print('Campo de busca tocado');
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
