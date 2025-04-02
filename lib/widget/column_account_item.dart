import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/themes/CustomTextStyle.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';

class ColumnAccountItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;

  const ColumnAccountItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 100),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.95,
          decoration: BoxDecoration(
            color: CustomTheme.secondaryBackground,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: CustomTheme.alternate,
              width: 1,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  // Usando Expanded para o Column ocupar o espaço disponível
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 26,
                            color: CustomTheme.primaryText,
                            fontWeight: FontWeight.w700),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 220),
                        child: Text(
                          subTitle,
                          style: CustomTextStyle.titleSmall,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  icon,
                  color: CustomTheme.primaryText,
                  size: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
