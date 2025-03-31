import 'package:flutter/material.dart';

import '../widget/card_list.dart';

class TelaMercado extends StatelessWidget {
  const TelaMercado({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CardListWidget(),
        ],
      ),
    );
  }
}
