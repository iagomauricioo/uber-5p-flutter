import 'package:flutter/material.dart';

import '../widget/card_list.dart';
import '../widget/places_container.dart';
import '../widget/search_input.dart';
import '../widget/suggestions.dart';

class TelaViagens extends StatelessWidget {
  const TelaViagens({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SearchInput(),
          SizedBox(height: 10),
          Places(),
          Suggestions(),
          CardListWidget(),
        ],
      ),
    );
  }
}
