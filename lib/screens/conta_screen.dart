import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/themes/CustomTextStyle.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';
import 'package:novo_uber_flutter/widget/account_footer.dart';
import 'package:novo_uber_flutter/widget/account_header.dart';
import 'package:novo_uber_flutter/widget/account_options.dart';
import 'package:novo_uber_flutter/widget/column_account.dart';

class TelaConta extends StatelessWidget {
  const TelaConta({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AccountHeader(),
          AccountOptions(),
          ColumnAccountOptions(),

          // divider
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Container(
              width: double.infinity,
              height: 10,
              decoration: const BoxDecoration(
                color: CustomTheme.alternate,
              ),
            ),
          ),

          AccountFooter(
            title: 'Mensagens',
            icon: Icons.message,
          ),
          AccountFooter(
            title: 'Configurações',
            icon: Icons.settings,
          ),
          AccountFooter(
            title: 'Família e adolescentes',
            icon: Icons.family_restroom,
          ),
          AccountFooter(
            title: 'Sobre',
            icon: Icons.info_outline,
          ),

          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Versão do aplicativo: v4.571.10003',
              textAlign: TextAlign.start,
              style: TextStyle(color: CustomTheme.secondaryText, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
