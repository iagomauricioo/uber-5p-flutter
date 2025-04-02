import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/widget/column_account_item.dart';

class ColumnAccountOptions extends StatelessWidget {
  const ColumnAccountOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 10,
      children: [
        ColumnAccountItem(
          icon: Icons.more,
          title: '40% de desconto',
          subTitle: 'Redescubra sua cidade gastando menos. Consulte os termos.',
        ),
        ColumnAccountItem(
          icon: Icons.card_giftcard,
          title: 'Uber One',
          subTitle: 'Experimente grátis',
        ),
        ColumnAccountItem(
          icon: Icons.security,
          title: 'Checagem de segurança',
          subTitle: 'Adicione seus destinos frequentes',
        ),
        ColumnAccountItem(
          icon: Icons.people,
          title: 'Indique pessoas',
          subTitle: 'Você e as pessoas indicadas receberão vantagens',
        ),
      ],
    );
  }
}
