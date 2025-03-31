import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomTheme.secondaryBackground,
      automaticallyImplyLeading: false,
      flexibleSpace: const FlexibleSpaceBar(
        title: Align(
          alignment: AlignmentDirectional(0, 1),
          child: Text(
            'Uber',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: CustomTheme.primaryText,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        centerTitle: true,
        expandedTitleScale: 1.0,
      ),
      elevation: 1,
    );
  }
}